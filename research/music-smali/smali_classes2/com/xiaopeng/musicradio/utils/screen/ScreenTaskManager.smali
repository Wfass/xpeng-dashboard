.class public Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;
.super Ljava/lang/Object;
.source "ScreenTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;,
        Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskCallback;,
        Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$INSTANCE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenTasManager"

.field private static sPackageNam:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskCallback;

.field private mTaskListener:Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;-><init>(Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;->mTaskListener:Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;

    .line 40
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;->sPackageNam:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;->sPackageNam:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;)Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;->mCallback:Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskCallback;

    return-object p0
.end method

.method public static getInstance()Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;
    .locals 1

    .line 36
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$INSTANCE;->access$100()Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x603

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x604

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x403

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;->mTaskListener:Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->registerTaskListener(Lcom/xiaopeng/screen/IScreenTaskListener;Ljava/util/List;)V

    const-string v0, "ScreenTasManager"

    const-string v1, "onStart: "

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 55
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;->mTaskListener:Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->unregisterTaskListener(Lcom/xiaopeng/screen/IScreenTaskListener;)V

    const-string v0, "ScreenTasManager"

    const-string v1, "onStop: "

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBluetoothScreenId(I)V
    .locals 3

    .line 60
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->newBuilder()Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->setScreenId(I)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBluetoothScreenId screenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extras= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTasManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    const-string v2, "com.android.bluetooth"

    invoke-virtual {v1, v2, p1, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->setScreenId(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public setScreenCallback(Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskCallback;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;->mCallback:Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskCallback;

    return-void
.end method
