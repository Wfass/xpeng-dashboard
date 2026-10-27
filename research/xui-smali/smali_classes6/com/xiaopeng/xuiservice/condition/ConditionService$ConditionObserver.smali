.class Lcom/xiaopeng/xuiservice/condition/ConditionService$ConditionObserver;
.super Landroid/database/ContentObserver;
.source "ConditionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/condition/ConditionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConditionObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/condition/ConditionService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/condition/ConditionService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 256
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService$ConditionObserver;->this$0:Lcom/xiaopeng/xuiservice/condition/ConditionService;

    .line 257
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 258
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 262
    sget-object v0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->URI_LIGHT_INTENSITY:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->URI_LIGHT_DAY_NIGHT:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService$ConditionObserver;->this$0:Lcom/xiaopeng/xuiservice/condition/ConditionService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/condition/ConditionService;->onLightIntensityChanged(Z)V

    .line 265
    :cond_1
    return-void
.end method
