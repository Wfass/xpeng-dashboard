.class public final synthetic Lcom/xiaopeng/xuiservice/appconfig/-$$Lambda$AppConfigManagerServer$YUcsVdABcZJhABstN7USA7xxmqY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;

.field private final synthetic f$1:Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/appconfig/-$$Lambda$AppConfigManagerServer$YUcsVdABcZJhABstN7USA7xxmqY;->f$0:Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/appconfig/-$$Lambda$AppConfigManagerServer$YUcsVdABcZJhABstN7USA7xxmqY;->f$1:Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/appconfig/-$$Lambda$AppConfigManagerServer$YUcsVdABcZJhABstN7USA7xxmqY;->f$0:Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/appconfig/-$$Lambda$AppConfigManagerServer$YUcsVdABcZJhABstN7USA7xxmqY;->f$1:Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;->lambda$ioControlWithParcelable$0(Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
