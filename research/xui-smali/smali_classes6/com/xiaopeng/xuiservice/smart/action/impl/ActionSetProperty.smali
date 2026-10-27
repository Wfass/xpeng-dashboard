.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSetProperty;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.source "ActionSetProperty.java"


# instance fields
.field private final property:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSetProperty;->property:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSetProperty;->value:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSetProperty;->property:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSetProperty;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSetProperty;->property:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSetProperty;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$krzuzctx_03SXZmHldPBH2-hatk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$krzuzctx_03SXZmHldPBH2-hatk;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSetProperty;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 25
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 30
    return-void
.end method
