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
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callBack"    # Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BaseCause;-><init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseImpl;->mDismissOnPause:Z

    .line 103
    return-void
.end method


# virtual methods
.method public ignoreDismissOneshot()V
    .locals 2

    .line 124
    const-string v0, "XActivityDismissCause"

    const-string v1, "ignoreDismissOneshot mDismissOnPause false"

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseImpl;->mDismissOnPause:Z

    .line 126
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 114
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseImpl;->mDismissOnPause:Z

    .line 115
    .local v0, "temp":Z
    iget-boolean v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseImpl;->mDismissOnPause:Z

    if-eqz v1, :cond_0

    .line 116
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseImpl;->dismiss(I)V

    .line 118
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseImpl;->mDismissOnPause:Z

    .line 119
    const-string v1, "XActivityDismissCause"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause : last "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public onRecreate()V
    .locals 2

    .line 108
    const-string v0, "XActivityDismissCause"

    const-string v1, "onRecreate"

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseImpl;->mDismissOnPause:Z

    .line 110
    return-void
.end method
