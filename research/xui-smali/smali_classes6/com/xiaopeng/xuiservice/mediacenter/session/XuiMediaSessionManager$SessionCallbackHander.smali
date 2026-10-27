.class Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$SessionCallbackHander;
.super Ljava/lang/Object;
.source "XuiMediaSessionManager.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCallbackHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$SessionCallbackHander;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$1;

    .line 427
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$SessionCallbackHander;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 430
    const-string v0, "MCService-XuiMediaSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SessionCallbackHander,invoke,method="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "onMediaKeyEventSessionChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "onAddressedPlayerChangedWithComponent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v1, "hashCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v1, "onMediaKeyEventDispatchedWithComponent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "equals"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "onAddressedPlayerChangedWithToken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v1, "onMediaKeyEventDispatchedWithToken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v1, "toString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 494
    const-string v0, ""

    return-object v0

    .line 484
    :pswitch_0
    aget-object v0, p3, v3

    check-cast v0, Landroid/content/ComponentName;

    .line 485
    .local v0, "receiver":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 486
    const-string v2, "MCService-XuiMediaSessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAddressedPlayerChanged: component="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 486
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_1
    return-object v1

    .line 468
    .end local v0    # "receiver":Landroid/content/ComponentName;
    :pswitch_1
    aget-object v0, p3, v3

    check-cast v0, Landroid/media/session/MediaSession$Token;

    .line 469
    .local v0, "token":Landroid/media/session/MediaSession$Token;
    if-nez v0, :cond_2

    .line 470
    const-string v2, "MCService-XuiMediaSessionManager"

    const-string v3, "onMediaKeyEventSessionChanged token is null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-object v1

    .line 473
    :cond_2
    new-instance v2, Landroid/media/session/MediaController;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 475
    .local v2, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 476
    const-string v3, "MCService-XuiMediaSessionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMediaKeyEventSessionChanged metaData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v5

    const-string v6, "android.media.metadata.ARTIST"

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$SessionCallbackHander;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    invoke-static {v3, v2}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->access$600(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;Landroid/media/session/MediaController;)V

    .line 480
    return-object v1

    .line 464
    .end local v0    # "token":Landroid/media/session/MediaSession$Token;
    .end local v2    # "controller":Landroid/media/session/MediaController;
    :pswitch_2
    return-object v1

    .line 460
    :pswitch_3
    return-object v1

    .line 443
    :pswitch_4
    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/String;

    .line 444
    .local v0, "packageName":Ljava/lang/String;
    aget-object v2, p3, v2

    check-cast v2, Landroid/media/session/MediaSession$Token;

    .line 445
    .local v2, "token":Landroid/media/session/MediaSession$Token;
    if-nez v2, :cond_4

    .line 446
    const-string v3, "MCService-XuiMediaSessionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMediaKeyEventSessionChanged token is null with pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-object v1

    .line 449
    :cond_4
    new-instance v3, Landroid/media/session/MediaController;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 451
    .local v3, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 452
    const-string v4, "MCService-XuiMediaSessionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMediaKeyEventSessionChanged metaData:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v6

    const-string v7, "android.media.metadata.ARTIST"

    invoke-virtual {v6, v7}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_5
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$SessionCallbackHander;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    invoke-static {v4, v3}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->access$600(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;Landroid/media/session/MediaController;)V

    .line 456
    return-object v1

    .line 439
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "token":Landroid/media/session/MediaSession$Token;
    .end local v3    # "controller":Landroid/media/session/MediaController;
    :pswitch_5
    aget-object v0, p3, v3

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 436
    :pswitch_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 433
    :pswitch_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_7
        -0x697e99c6 -> :sswitch_6
        -0x62f000ec -> :sswitch_5
        -0x4d378041 -> :sswitch_4
        -0x4d283f42 -> :sswitch_3
        0x8cdac1b -> :sswitch_2
        0x2c5a5c98 -> :sswitch_1
        0x3023a33e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
