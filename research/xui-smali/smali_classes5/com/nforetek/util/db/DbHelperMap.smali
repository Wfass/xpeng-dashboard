.class public Lcom/nforetek/util/db/DbHelperMap;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbHelperMap.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "db_map"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TABLE_NAME:Ljava/lang/String; = "MessageContent"


# instance fields
.field private final SQL_DELETE_All_MESSAGE:Ljava/lang/String;

.field private final SQL_DELETE_FOLDER:Ljava/lang/String;

.field private final SQL_DELETE_MESSAGE:Ljava/lang/String;

.field private final SQL_DELETE_MESSAGE_BY_FOLDER:Ljava/lang/String;

.field private final SQL_DELETE_ONE_MESSAGE:Ljava/lang/String;

.field private final SQL_MESSAGE:Ljava/lang/String;

.field private final SQL_SELECT_MESSAGE:Ljava/lang/String;

.field private final SQL_SELECT_MESSGE_BY_FOLDER_AND_HANDLE:Ljava/lang/String;

.field private final SQL_SELECT_ONE_MESSAGE:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private _id:Ljava/lang/String;

.field private datetime:Ljava/lang/String;

.field private folder:Ljava/lang/String;

.field private handle:Ljava/lang/String;

.field private helper:Ljava/lang/Object;

.field private m_context:Landroid/content/Context;

.field private macAddress:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private read:Ljava/lang/String;

.field private recipient_addressing:Ljava/lang/String;

.field private sender_addressing:Ljava/lang/String;

.field private sender_name:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private subject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    const-string v0, "db_map"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 19
    const-string v0, "DbMapHelper"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, "_id"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->_id:Ljava/lang/String;

    .line 27
    const-string v0, "handle"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->handle:Ljava/lang/String;

    .line 28
    const-string v0, "subject"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->subject:Ljava/lang/String;

    .line 29
    const-string v0, "message"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->message:Ljava/lang/String;

    .line 30
    const-string v0, "datetime"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->datetime:Ljava/lang/String;

    .line 31
    const-string v0, "sender_name"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->sender_name:Ljava/lang/String;

    .line 32
    const-string v0, "sender_addressing"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->sender_addressing:Ljava/lang/String;

    .line 33
    const-string v0, "recipient_addressing"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->recipient_addressing:Ljava/lang/String;

    .line 34
    const-string v0, "size"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->size:Ljava/lang/String;

    .line 35
    const-string v0, "read"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->read:Ljava/lang/String;

    .line 36
    const-string v0, "macAddress"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->macAddress:Ljava/lang/String;

    .line 37
    const-string v0, "folder"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->folder:Ljava/lang/String;

    .line 267
    const-string v0, "select * from MessageContent where condition = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->SQL_MESSAGE:Ljava/lang/String;

    .line 269
    const-string v0, "select * from MessageContent where macAddress = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->SQL_SELECT_MESSAGE:Ljava/lang/String;

    .line 272
    const-string v0, "select * from MessageContent where macAddress = ? and handle = ? and folder = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->SQL_SELECT_ONE_MESSAGE:Ljava/lang/String;

    .line 275
    const-string v0, "select * from MessageContent where folder = ? and handle = ? and macAddress = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->SQL_SELECT_MESSGE_BY_FOLDER_AND_HANDLE:Ljava/lang/String;

    .line 278
    const-string v0, "delete from MessageContent where macAddress = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->SQL_DELETE_MESSAGE:Ljava/lang/String;

    .line 282
    const-string v0, "delete from MessageContent where macAddress = ? and folder = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->SQL_DELETE_FOLDER:Ljava/lang/String;

    .line 285
    const-string v0, "delete from MessageContent where macAddress = ? and handle = ? and datetime=?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->SQL_DELETE_ONE_MESSAGE:Ljava/lang/String;

    .line 288
    const-string v0, "delete from MessageContent"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->SQL_DELETE_All_MESSAGE:Ljava/lang/String;

    .line 291
    const-string v0, "delete from MessageContent where folder = ? and handle = ? and macAddress = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->SQL_DELETE_MESSAGE_BY_FOLDER:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->TAG:Ljava/lang/String;

    const-string v1, "DbHelperMap constucter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-object p1, p0, Lcom/nforetek/util/db/DbHelperMap;->m_context:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public deleteAllMessage(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "message"    # Ljava/lang/String;

    .line 242
    const-string v0, "delete from MessageContent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method public deleteAllTableContent(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 164
    const-string v0, "MessageContent"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method public deleteMessageByFolderAndHandle(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "folder"    # I
    .param p3, "handle"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;

    .line 262
    const-string v0, "delete from MessageContent where folder = ? and handle = ? and macAddress = ?"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 263
    const/4 v2, 0x2

    aput-object p4, v1, v2

    .line 262
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method public deleteMessageByMacAddress(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "address"    # Ljava/lang/String;

    .line 247
    const-string v0, "delete from MessageContent where macAddress = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public deleteMessageByMacAddressAndFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "folder"    # I

    .line 252
    const-string v0, "delete from MessageContent where macAddress = ? and folder = ?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    return-void
.end method

.method public deleteOneMessageByMacAddress(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "address"    # Ljava/lang/String;

    .line 257
    const-string v0, "delete from MessageContent where macAddress = ? and handle = ? and datetime=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public insertMessageInfo(Landroid/database/sqlite/SQLiteDatabase;Lcom/nforetek/bt/res/MsgOutline;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "msgOutline"    # Lcom/nforetek/bt/res/MsgOutline;

    .line 95
    iget-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->TAG:Ljava/lang/String;

    const-string v1, "insertMessageInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 98
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz p2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/nforetek/util/db/DbHelperMap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insertMessageInfo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nforetek/bt/res/MsgOutline;->getHandle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v1, "Folder"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/MsgOutline;->getFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "Handle"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/MsgOutline;->getHandle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "Subject"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/MsgOutline;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "Message"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/MsgOutline;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "Datetime"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/MsgOutline;->getDatetime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "Sender_Name"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/MsgOutline;->getSender_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "Sender_Addressing"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/MsgOutline;->getSender_addressing()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "Recipient_Addressing"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/MsgOutline;->getRecipient_addressing()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "Read"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/MsgOutline;->getRead()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "macAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/MsgOutline;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "MessageContent"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 113
    :cond_0
    return-void
.end method

.method public insertMessageInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "folder"    # I
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "date"    # Ljava/lang/String;
    .param p7, "senderName"    # Ljava/lang/String;
    .param p8, "senderAddr"    # Ljava/lang/String;
    .param p9, "recipientAddr"    # Ljava/lang/String;
    .param p10, "address"    # Ljava/lang/String;
    .param p11, "readStatus"    # I

    .line 74
    iget-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->TAG:Ljava/lang/String;

    const-string v1, "insertMessageInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 78
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/nforetek/util/db/DbHelperMap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insertMessageInfo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v1, "Folder"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v1, "Handle"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "Subject"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "Message"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "Datetime"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "Sender_Name"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "Sender_Addressing"

    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "Recipient_Addressing"

    invoke-virtual {v0, v1, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "Read"

    const/4 v2, 0x1

    if-ne p11, v2, :cond_0

    const-string v2, "yes"

    goto :goto_0

    :cond_0
    const-string v2, "no"

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "macAddress"

    invoke-virtual {v0, v1, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "MessageContent"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 92
    return-void
.end method

.method public isMessageInDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "handle"    # Ljava/lang/String;
    .param p4, "folder"    # Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Piggy Check isMessageInDatabase address : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " folder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v0, "inbox"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "sent"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->TAG:Ljava/lang/String;

    const-string v2, "folder parameter error !"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return v1

    .line 220
    :cond_0
    const-string v0, "select * from MessageContent where macAddress = ? and handle = ? and folder = ?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v1

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v4, 0x2

    aput-object p4, v2, v4

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 221
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/nforetek/util/db/DbHelperMap;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Piggy Check isMessageInDatabase cursor count : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 223
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "checkID":Ljava/lang/String;
    const-string v4, "handle"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "checkHandle":Ljava/lang/String;
    const-string v5, "datetime"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "checkDate":Ljava/lang/String;
    iget-object v6, p0, Lcom/nforetek/util/db/DbHelperMap;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Piggy Check ID : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " handle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " DateTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ne v6, v3, :cond_1

    .line 228
    return v3

    .line 230
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-le v6, v3, :cond_2

    .line 231
    iget-object v1, p0, Lcom/nforetek/util/db/DbHelperMap;->TAG:Ljava/lang/String;

    const-string v6, "Piggy Check have same handle same folder in database. don\'t know why ."

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return v3

    .line 234
    :cond_2
    return v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    iget-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() Piggy check"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS MessageContent ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/nforetek/util/db/DbHelperMap;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Integer primary key autoincrement, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lcom/nforetek/util/db/DbHelperMap;->folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(6), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Lcom/nforetek/util/db/DbHelperMap;->handle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(256), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcom/nforetek/util/db/DbHelperMap;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(256), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lcom/nforetek/util/db/DbHelperMap;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(256), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Lcom/nforetek/util/db/DbHelperMap;->datetime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(256), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Lcom/nforetek/util/db/DbHelperMap;->sender_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(256), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/nforetek/util/db/DbHelperMap;->sender_addressing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(256), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lcom/nforetek/util/db/DbHelperMap;->recipient_addressing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(256), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Lcom/nforetek/util/db/DbHelperMap;->read:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(3), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Lcom/nforetek/util/db/DbHelperMap;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(17)) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "message"    # Ljava/lang/String;

    .line 155
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 159
    const-string v0, "DROP TABLE IF EXISTS config"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0, p1}, Lcom/nforetek/util/db/DbHelperMap;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 161
    return-void
.end method

.method public queryMessage(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "condition"    # Ljava/lang/String;

    .line 148
    const-string v0, "select * from MessageContent where condition = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 150
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public queryMessageByMacAddress(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "message"    # Ljava/lang/String;

    .line 195
    const-string v0, "select * from MessageContent where macAddress = ?"

    .line 196
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 195
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 198
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public queryMessageByfolderAndHandle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nforetek/bt/res/MsgOutline;
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "handle"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;

    .line 170
    const-string v0, "select * from MessageContent where folder = ? and handle = ? and macAddress = ?"

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v4, 0x2

    aput-object p4, v2, v4

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 172
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v2, Lcom/nforetek/bt/res/MsgOutline;

    invoke-direct {v2}, Lcom/nforetek/bt/res/MsgOutline;-><init>()V

    .line 174
    .local v2, "msgOutline":Lcom/nforetek/bt/res/MsgOutline;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 176
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nforetek/bt/res/MsgOutline;->setFolder(Ljava/lang/String;)V

    .line 177
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nforetek/bt/res/MsgOutline;->setHandle(Ljava/lang/String;)V

    .line 178
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nforetek/bt/res/MsgOutline;->setSubject(Ljava/lang/String;)V

    .line 179
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nforetek/bt/res/MsgOutline;->setMessage(Ljava/lang/String;)V

    .line 180
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nforetek/bt/res/MsgOutline;->setDatetime(Ljava/lang/String;)V

    .line 181
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nforetek/bt/res/MsgOutline;->setSender_name(Ljava/lang/String;)V

    .line 182
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nforetek/bt/res/MsgOutline;->setSender_addressing(Ljava/lang/String;)V

    .line 183
    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nforetek/bt/res/MsgOutline;->setRecipient_addressing(Ljava/lang/String;)V

    .line 184
    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nforetek/bt/res/MsgOutline;->setSize(Ljava/lang/String;)V

    .line 185
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nforetek/bt/res/MsgOutline;->setRead(Ljava/lang/String;)V

    .line 187
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 189
    return-object v2
.end method

.method public queryMessageInfo(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    const-string v1, "MessageContent"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v2, v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 122
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 123
    .local v1, "rows_num":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v2, "sMessage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/nforetek/util/db/DbHelperMap;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Piggy Check rows counts : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-eqz v1, :cond_2

    .line 127
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 141
    .end local v3    # "i":I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 128
    .restart local v3    # "i":I
    :cond_0
    if-nez v3, :cond_1

    .line 129
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 130
    goto :goto_1

    .line 131
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 134
    :goto_1
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "strCr":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v4    # "strCr":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v3    # "i":I
    :cond_2
    :goto_2
    return-object v2
.end method

.method public queryOneMessageByMacAddress(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "handle"    # Ljava/lang/String;
    .param p4, "folder"    # Ljava/lang/String;

    .line 203
    const-string v0, "inbox"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sent"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/nforetek/util/db/DbHelperMap;->TAG:Ljava/lang/String;

    const-string v1, "folder parameter error !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 207
    :cond_0
    const-string v0, "select * from MessageContent where macAddress = ? and handle = ? and folder = ?"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 209
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method
