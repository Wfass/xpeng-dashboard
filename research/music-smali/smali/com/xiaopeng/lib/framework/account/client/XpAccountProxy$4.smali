.class Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$4;
.super Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener$Stub;
.source "XpAccountProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$4;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyUserInfoChanged(Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;)V
    .locals 2

    const-string v0, "XpAccountProxy"

    const-string v1, "notifyUserInfoChanged"

    .line 272
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/account/info/UserInfoEventImpl;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/account/info/UserInfoEventImpl;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaopeng/lib/framework/account/info/UserInfoEventImpl;->setUserInfo(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfoEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
