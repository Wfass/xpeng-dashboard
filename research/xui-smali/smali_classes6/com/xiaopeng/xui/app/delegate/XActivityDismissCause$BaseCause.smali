.class Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BaseCause;
.super Ljava/lang/Object;
.source "XActivityDismissCause.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseCause"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mCallBack:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callBack"    # Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BaseCause;->mActivity:Landroid/app/Activity;

    .line 75
    iput-object p2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BaseCause;->mCallBack:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;

    .line 76
    return-void
.end method


# virtual methods
.method dismiss(I)V
    .locals 1
    .param p1, "cause"    # I

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BaseCause;->mCallBack:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BaseCause;->mCallBack:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;->onTriggerDismiss(I)V

    .line 82
    :cond_0
    return-void
.end method
