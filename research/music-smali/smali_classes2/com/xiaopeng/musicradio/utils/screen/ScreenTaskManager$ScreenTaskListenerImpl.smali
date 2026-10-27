.class final Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;
.super Lcom/xiaopeng/screen/ScreenTaskListener;
.source "ScreenTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenTaskListenerImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenTaskListenerImpl"


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;->this$0:Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;

    invoke-direct {p0}, Lcom/xiaopeng/screen/ScreenTaskListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$1;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;-><init>(Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;)V

    return-void
.end method


# virtual methods
.method public onActivityChanged(ILjava/lang/String;)V
    .locals 4

    .line 84
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/screen/ScreenTaskListener;->onActivityChanged(ILjava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    const-string v1, "com.xiaopeng.musicradio/com.xiaopeng.musicradio.home.view.HomeActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->isHome(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    const-string v1, "ScreenTaskListenerImpl"

    if-eqz v0, :cond_1

    .line 88
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getTopActivity(I)Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    .line 90
    :cond_0
    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/b;->a(Z)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " top="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance p1, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl$1;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl$1;-><init>(Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;Z)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 101
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityChanged screenId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isHome = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " property="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onEventChanged(IILjava/lang/String;)V
    .locals 2

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/screen/ScreenTaskListener;->onEventChanged(IILjava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEventChanged screenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenTaskListenerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 111
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {p2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 112
    new-instance p2, Lcom/xiaopeng/musicradio/event/common/CommonEvent$au;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$au;-><init>(I)V

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 113
    iget-object p2, p0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;->this$0:Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;->setBluetoothScreenId(I)V

    :cond_0
    return-void
.end method
