.class Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "AppMetaDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl$2;->this$0:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .locals 2
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 85
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->appId:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 86
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->appId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 90
    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 80
    const-string v0, "DELETE FROM `applist_meta` WHERE `appId` = ?"

    return-object v0
.end method
