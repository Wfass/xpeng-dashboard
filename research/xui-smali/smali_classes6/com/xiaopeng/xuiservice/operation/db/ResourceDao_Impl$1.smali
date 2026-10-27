.class Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "ResourceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 3
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 36
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 37
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 41
    :goto_0
    const/4 v0, 0x2

    iget v1, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 42
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceName:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 43
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 47
    :goto_1
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->targetPath:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 48
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 50
    :cond_2
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->targetPath:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 52
    :goto_2
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->md5Hash:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 53
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 55
    :cond_3
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->md5Hash:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 57
    :goto_3
    const/4 v0, 0x6

    iget-wide v1, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->effectTime:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 58
    const/4 v0, 0x7

    iget-wide v1, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->expireTime:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 59
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceFrom:Ljava/lang/String;

    const/16 v1, 0x8

    if-nez v0, :cond_4

    .line 60
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 62
    :cond_4
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceFrom:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 64
    :goto_4
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    const/16 v1, 0x9

    if-nez v0, :cond_5

    .line 65
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 67
    :cond_5
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 69
    :goto_5
    const/16 v0, 0xa

    iget v1, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->status:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 70
    const/16 v0, 0xb

    iget-wide v1, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->createTime:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 71
    const/16 v0, 0xc

    iget-wide v1, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->updateTime:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 72
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceIcon:Ljava/lang/String;

    const/16 v1, 0xd

    if-nez v0, :cond_6

    .line 73
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 75
    :cond_6
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceIcon:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 77
    :goto_6
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->description:Ljava/lang/String;

    const/16 v1, 0xe

    if-nez v0, :cond_7

    .line 78
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 80
    :cond_7
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->description:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 82
    :goto_7
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->price:Ljava/lang/String;

    const/16 v1, 0xf

    if-nez v0, :cond_8

    .line 83
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 85
    :cond_8
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->price:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 87
    :goto_8
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "INSERT OR REPLACE INTO `ResourceInfo`(`resourceId`,`resourceType`,`resourceName`,`targetPath`,`md5Hash`,`effectTime`,`expireTime`,`resourceFrom`,`extraInfo`,`status`,`createTime`,`updateTime`,`resourceIcon`,`description`,`price`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
