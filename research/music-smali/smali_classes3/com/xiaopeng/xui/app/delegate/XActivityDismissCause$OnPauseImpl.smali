.class Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseImpl;
.super Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BaseCause;
.source "XActivityDismissCause.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnPauseImpl"
.end annotation


# instance fields
.field private mDismissOnPause:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BaseCause;-><init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)V

    const/4 p1, 0x1

    .line 100
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseImpl;->mDismissOnPause:Z

    return-void
.end method


# virtual methods
.method public ignoreDismissOneshot()V
    .locals 2

    const-string v0, "XActivityDismissCause"

    const-string v1, "ignoreDismissOneshot mDismissOnPause false"

    .line 125
    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseImpl;->mDismissOnPause:Z

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 115
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseImpl;->mDismissOnPause:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 117
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseImpl;->dismiss(I)V

    :cond_0
    const/4 v1, 0x1

    .line 119
    iput-boolean v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseImpl;->mDismissOnPause:Z

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause : last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XActivityDismissCause"

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRecreate()V
    .locals 2

    const-string v0, "XActivityDismissCause"

    const-string v1, "onRecreate"

    .line 109
    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseImpl;->mDismissOnPause:Z

    return-void
.end method
