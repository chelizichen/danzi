var express = require('express');
var router = express.Router();
const { pool } = require('../db');
const moment = require('moment')

async function getById(id, page = 1, size = 10) {
    page = (page - 1) * size;
    size = (page + 1) * size
    return new Promise((resolve, reject) => {
        pool.query(`select posts.*,user.*,
        case 
            When posts.type = 1 Then '原神'
            When posts.type = 2 Then '崩坏三' 
            When posts.type = 4 Then '新闻' 

            Else "其他"
        End As detailType,
				case 
					When posts.userId not in (SELECT concern.concernUserId from concern where concern.userId = ?) then '关注'
					When posts.userId in (SELECT concern.concernUserId from concern where concern.userId = ?) then '已关注'
				END AS isConcern ,
                (SELECT COUNT(*) FROM follows WHERE posts.id = follows.postId) AS FollowNum
            from posts
        Left Join user
        On posts.userId = user.userId 
        where posts.userId = ?
        Limit ?,? `, [id, id,id, page, size], (err, val) => {
            if (err) {
                reject(err)
            }
            let currentTime = moment()
            let _data = val;

            let data = _data.map(item => {
                // let _time = moment.ismoment(item.releaseTime)

                // 假设要判断的时间是 "2023-05-16 15:30:00"
                var targetTime = moment(item.releaseTime);

                // 判断时间是否为今天
                if (targetTime.isSame(currentTime, 'day')) {
                    // 如果是今天，则显示几个小时前
                    var hoursAgo = currentTime.diff(targetTime, 'hours');
                    item.releaseTime = hoursAgo + '小时前';
                } else {
                    // 如果不是今天，则显示几月几日
                    var formattedDate = targetTime.format('MMMM DD');
                    item.releaseTime = formattedDate
                }
                return item
            })
            resolve(data)
        })
    })
}

// 通过用户Id拿到帖子
// 5.19 添加跟帖数量字段
async function getPostById(id, page = 1, size = 10) {
    page = (page - 1) * size;
    size = (page + 1) * size
    return new Promise((resolve, reject) => {
        pool.query(`select posts.*,user.*,
        case 
            When posts.type = 1 Then '原神'
            When posts.type = 2 Then '崩坏三' 
            When posts.type = 4 Then '新闻' 

            Else "其他"
        End As detailType,
				case 
					When posts.userId not in (SELECT concern.concernUserId from concern where concern.userId = ?) then '关注'
					When posts.userId in (SELECT concern.concernUserId from concern where concern.userId = ?) then '已关注'
				END AS isConcern ,
                (SELECT COUNT(*) FROM follows WHERE posts.id = follows.postId) AS FollowNum
            from posts 
        Left Join user
        On posts.userId = user.userId order by posts.releaseTime desc Limit ?,? `, [id, id, page, size], (err, val) => {
            if (err) {
                reject(err)
            }
            let currentTime = moment()
            let _data = val;

            let data = _data.map(item => {
                // let _time = moment.ismoment(item.releaseTime)

                // 假设要判断的时间是 "2023-05-16 15:30:00"
                var targetTime = moment(item.releaseTime);

                // 判断时间是否为今天
                if (targetTime.isSame(currentTime, 'day')) {
                    // 如果是今天，则显示几个小时前
                    var hoursAgo = currentTime.diff(targetTime, 'hours');
                    item.releaseTime = hoursAgo + '小时前';
                } else {
                    // 如果不是今天，则显示几月几日
                    var formattedDate = targetTime.format('MMMM DD');
                    item.releaseTime = formattedDate
                }
                return item
            })

            resolve(data)
        })
    })
}

async function  getOne(id){
    return new Promise((resolve, reject) => {
        pool.query(`select posts.*,user.*,
        case 
            When posts.type = 1 Then '原神'
            When posts.type = 2 Then '崩坏三' 
            When posts.type = 4 Then '新闻' 
            Else "其他"
        End As detailType,
                (SELECT COUNT(*) FROM follows WHERE posts.id = follows.postId) AS FollowNum
            from posts
        Left Join user
        On posts.userId = user.userId 
        where posts.id = ?
        `, [id], (err, val) => {
            if (err) {
                reject(err)
            }
            let currentTime = moment()
            let _data = val;

            let data = _data.map(item => {
                // let _time = moment.ismoment(item.releaseTime)

                // 假设要判断的时间是 "2023-05-16 15:30:00"
                var targetTime = moment(item.releaseTime);

                // 判断时间是否为今天
                if (targetTime.isSame(currentTime, 'day')) {
                    // 如果是今天，则显示几个小时前
                    var hoursAgo = currentTime.diff(targetTime, 'hours');
                    item.releaseTime = hoursAgo + '小时前';
                } else {
                    // 如果不是今天，则显示几月几日
                    var formattedDate = targetTime.format('MMMM DD');
                    item.releaseTime = formattedDate
                }
                return item
            })
            console.log(data);
            resolve(data[0])
        })
    })
}

router.get("/getPostsById", async function (req, res) {
    const { id } = req.query;
    try {
        let data = await getPostById(id)
        res.json({
            code: '0',
            data
        })
    } catch (e) {
        res.end({
            code: "-1",
            msg: "请求失败"
        })
    }
})


function getPostList(page = 1, size = 10) {
    return new Promise((resolve, reject) => {
        page = (page - 1) * size;
        size = (page + 1) * size
        pool.query(`select posts.*,user.*,
        case 
            When posts.type = 1 Then '原神'
            When posts.type = 2 Then '崩坏三' 
            When posts.type = 4 Then '新闻' 

            Else "原神"
        End As detailType
            from posts 
        Left Join user
        On posts.userId = user.userId
        Limit ?,?`, [page, size], (err, val) => {
            if (err) {
                reject(err)
            }

            let currentTime = moment()
            let _data = val;

            let data = _data.map(item => {
                // let _time = moment.ismoment(item.releaseTime)

                // 假设要判断的时间是 "2023-05-16 15:30:00"
                var targetTime = moment(item.releaseTime);

                // 判断时间是否为今天
                if (targetTime.isSame(currentTime, 'day')) {
                    // 如果是今天，则显示几个小时前
                    var hoursAgo = currentTime.diff(targetTime, 'hours');
                    item.releaseTime = hoursAgo + '小时前';
                } else {
                    // 如果不是今天，则显示几月几日
                    var formattedDate = targetTime.format('MMMM DD');
                    item.releaseTime = formattedDate
                }
                return item
            })

            resolve(data)
        })
    })
}

router.get("/list", async function (req, res) {
    const { page, size } = req.query;
    try {
        const data = await getPostList(page, size)
        res.send(data)
    } catch (e) {
        throw Error(e)
    }
})

function addView(id) {
    return new Promise((resolve, reject) => {
        pool.query('UPDATE posts SET views = views + 1 WHERE id = ?', [id], (ERR, RES) => {
            if (ERR) {
                reject(ERR)
            }
            resolve(RES)
        })
    })
}



router.get("/addView", async function (req, res) {
    const { id } = req.query;
    const data = await addView(id)
    res.send(data)
})


function getDetailByPostId(id) {
    return new Promise((resolve, reject) => {
        pool.query(`
        SELECT
        follows.*,
        u1.username AS toUserDetail,
        u2.username AS userDetail,
        u2.avatar AS userAvatar,
        u3.avatar AS toUserAvatar
      FROM
        follows
        INNER JOIN user AS u1 ON follows.toUserId = u1.userId
        INNER JOIN user AS u2 ON follows.userId = u2.userId
        INNER JOIN user AS u3 ON follows.toUserId = u3.userId
      WHERE
        follows.postId = ?;
        `, [id], function (err, res) {
            if (err) {
                reject(err)
            }
            resolve(res)
        })
    })
}

router.get("/getDetailByPostId", async function (req, res) {
    const { id } = req.query
    try {
        const data = await getDetailByPostId(id)
        res.send(data)
    } catch (e) {
        throw new Error(e)
    }
})

function saveFollows(item) {
    const { postId, toUserId, content, like = "0", disLike = "0", userId } = item;
    const releaseTime = moment(moment.now()).format("YYYY-MM-DD hh:mm:ss")
    return new Promise((resolve, reject) => {
        pool.query(`
        insert into follows (
            postId,
            toUserId,
            content,
            likes,
            disLikes,
            userId,
            releaseTime
            )values(
                ?,?,?,?,?,?,?
            )
            `, [Number(postId), Number(toUserId), content, like, disLike, Number(userId), releaseTime], function (err, res) {
            if (err) {
                reject(err)
            }
            resolve(res)
        })
    })
}

router.post("/saveFollows", async function (req, res) {
    const { body } = req;
    try {
        const data = await saveFollows(body)
        res.send(data)
    } catch (e) {
        throw new Error(e)
    }
})


function savePosts(item) {
    let { title, type=3, views = 0, likes = 0, content, img = "", userId } = item;
    img = img.replace("public/posts/","")
    const releaseTime = moment(moment.now()).format("YYYY-MM-DD hh:mm:ss")
    return new Promise((resolve, reject) => {
        pool.query(`
        insert into posts (
            title,
            releaseTime,
            type,
            views,
            likes,
            content,
            img,
            userId
            )values(
                ?,?,?,?,?,?,?,?
            )
            `, [title,releaseTime,type,views,likes,content,img,userId], function (err, res) {
            if (err) {
                reject(err)
            }
            resolve(res)
        })
    })
}

function updateUserLevel(id) {
    return new Promise((resolve, reject) => {
        pool.query('UPDATE user SET level = level + 1 WHERE userId = ?', [id], (ERR, RES) => {
            if (ERR) {
                reject(ERR)
            }
            resolve(RES)
        })
    })
}

// 每发一次帖 等级涨1
router.post("/savePosts", async function (req, res) {
    const { body } = req;
    const { userId } = body
    try {
        const data = await savePosts(body)
        // 添加等级
        updateUserLevel(userId)
        res.send(data)
    } catch (e) {
        throw new Error(e)
    }
})



module.exports = {
    router,
    getPostById,
    getPostList,
    getDetailByPostId,
    getById,
    getOne,
    addView
};

