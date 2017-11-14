{"filter":false,"title":"notification.rb","tooltip":"/app/models/notification.rb","undoManager":{"mark":8,"position":8,"stack":[[{"start":{"row":0,"column":39},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":1,"column":0},"end":{"row":1,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":1,"column":4},"end":{"row":6,"column":56},"action":"insert","lines":["  belongs_to :recipient, class_name: \"User\"","  belongs_to :actor, class_name: \"User\"","  belongs_to :notifiable, polymorphic: true","","  scope :unread, ->{ where(read_at: nil) }","  scope :recent, ->{ order(created_at: :desc).limit(5) }"],"id":3}],[{"start":{"row":1,"column":5},"end":{"row":1,"column":6},"action":"remove","lines":[" "],"id":4}],[{"start":{"row":1,"column":4},"end":{"row":1,"column":5},"action":"remove","lines":[" "],"id":5}],[{"start":{"row":1,"column":0},"end":{"row":1,"column":4},"action":"remove","lines":["    "],"id":6}],[{"start":{"row":1,"column":0},"end":{"row":1,"column":4},"action":"insert","lines":["    "],"id":7}],[{"start":{"row":1,"column":0},"end":{"row":1,"column":4},"action":"remove","lines":["    "],"id":8}],[{"start":{"row":1,"column":0},"end":{"row":1,"column":1},"action":"insert","lines":[" "],"id":9}],[{"start":{"row":1,"column":1},"end":{"row":1,"column":2},"action":"insert","lines":[" "],"id":10}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":5,"column":42},"end":{"row":5,"column":42},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1510497379994,"hash":"eb4828eecc02783eb4f865130dedefb51ffbdb72"}