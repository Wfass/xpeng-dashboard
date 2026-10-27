.class public Larb;
.super Ljava/lang/Object;
.source "DbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Larb$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/xiaopeng/musicradio/bean/dao/DaoSession;


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;

    new-instance v1, Lard;

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const-string v3, "music"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lard;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 20
    invoke-virtual {v1}, Lard;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 22
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->newSession()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v0

    iput-object v0, p0, Larb;->a:Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    return-void
.end method

.method synthetic constructor <init>(Larb$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Larb;-><init>()V

    return-void
.end method

.method public static a()Larb;
    .locals 1

    .line 26
    invoke-static {}, Larb$a;->a()Larb;

    move-result-object v0

    return-object v0
.end method

.method public static c()V
    .locals 0

    .line 38
    invoke-static {}, Larb;->a()Larb;

    return-void
.end method


# virtual methods
.method public b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;
    .locals 1

    .line 34
    iget-object v0, p0, Larb;->a:Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    return-object v0
.end method
