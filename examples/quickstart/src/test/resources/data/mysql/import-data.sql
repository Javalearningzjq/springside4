INSERT INTO `quickstart`.`ss_user` (`id`, `login_name`, `name`, `password`, `salt`, `roles`, `register_date`) 
		VALUES ('1', 'admin', 'Admin', '691b14d79bf0fa2215f155235df5e670b64394cc', '7efbd59d9741d34f', 'admin', '2014-10-22 15:08:11');
INSERT INTO `quickstart`.`ss_user` (`id`, `login_name`, `name`, `password`, `salt`, `roles`, `register_date`) 
		VALUES ('2', '张三', 'zhansan', '2488aa0c31c624687bd9928e0a5d29e7d1ed520b', '6d65d24122c30500', 'user', '2014-10-22 15:09:11');
INSERT INTO `quickstart`.`ss_user` (`id`, `login_name`, `name`, `password`, `salt`, `roles`, `register_date`) 
		VALUES ('10001', 'aabb', 'aabb', '123456', 'common', 'common', '2014-10-22 15:08:11');
INSERT INTO `quickstart`.`ss_user` (`id`, `login_name`, `name`, `password`, `salt`, `roles`, `register_date`) 
		VALUES ('10002', 'admin2', 'admin2', 'e8d2bb75f64dd8b4e84eddc8c5609f056484e71c', 'c701fe3658d32775', 'user', '2014-10-22 16:54:36');

INSERT INTO `quickstart`.`ss_task` (`id`, `title`, `description`, `user_id`) 
		VALUES ('1', 'Study PlayFramework 2.0', 'http://www.playframework.org/', '2');
INSERT INTO `quickstart`.`ss_task` (`id`, `title`, `description`, `user_id`) 
		VALUES ('2', 'Study Grails 2.0', 'http://www.grails.org/', '2');
INSERT INTO `quickstart`.`ss_task` (`id`, `title`, `description`, `user_id`) 
		VALUES ('3', 'Try SpringFuse', 'http://www.springfuse.com/', '2');
INSERT INTO `quickstart`.`ss_task` (`id`, `title`, `description`, `user_id`) 
		VALUES ('4', 'Try Spring Roo', 'http://www.springsource.org/spring-roo', '2');
INSERT INTO `quickstart`.`ss_task` (`id`, `title`, `description`, `user_id`) 
		VALUES ('5', 'Release SpringSide 4.0', 'As soon as posibble.', '2');
INSERT INTO `quickstart`.`ss_task` (`id`, `title`, `description`, `user_id`) 
		VALUES ('123', 'task1', '标准的, 规范的, task', '10001');
INSERT INTO `quickstart`.`ss_task` (`id`, `title`, `description`, `user_id`) 
		VALUES ('124', '开发环境服务列表', '所有开发的用户都能看到的任务.', '10002');
INSERT INTO `quickstart`.`ss_task` (`id`, `title`, `description`, `user_id`) 
		VALUES ('125', '动漫任务', '动漫的介绍和说明.', '10002');
INSERT INTO `quickstart`.`ss_task` (`id`, `title`, `description`, `user_id`) 
		VALUES ('126', '影视任务', '影视的介绍, 对近期放映的大片还有国外引进的大片有介绍.', '10002');
INSERT INTO `quickstart`.`ss_task` (`id`, `title`, `description`, `user_id`) 
		VALUES ('127', '音乐任务', '对音乐进行丰富的介绍, 其中有mp3, 还有高清音频的音乐, 可以进行欣赏.', '10002');
INSERT INTO `quickstart`.`ss_task` (`id`, `title`, `description`, `user_id`) 
		VALUES ('128', '火影忍者', '我喜欢的动漫之一, 里面对团队协作有很深刻的诠释.', '10002');
INSERT INTO `quickstart`.`ss_task` (`id`, `title`, `description`, `user_id`) 
		VALUES ('129', '海贼王', '仅仅是看过几集, 感觉不会有兴趣, 但社会上这部动漫有很多的fans.', '10002');
INSERT INTO `quickstart`.`ss_task` (`id`, `title`, `description`, `user_id`) 
		VALUES ('130', 'java开发技术', '我的饭碗, 一直用它在吃饭, 后续生活还是要靠它了, 还有那台陪了我N年的T420 RW2.', '10002');

		

