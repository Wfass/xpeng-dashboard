.class Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;
.super Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener$Stub;
.source "AmbientLightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AmbientLightEventListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;)V
    .locals 1

    .line 918
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener$Stub;-><init>()V

    .line 919
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAmbientLightSetEvent(ILjava/lang/String;[I)V
    .locals 3

    .line 937
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    const-string p1, "AmbientLightManager"

    const-string p2, "Event type not handled "

    .line 967
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 962
    :pswitch_0
    aget p1, p3, v2

    if-nez p1, :cond_0

    move v1, v2

    .line 963
    :cond_0
    invoke-static {v0, p2, v1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->access$1500(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;Z)V

    goto :goto_0

    .line 958
    :pswitch_1
    aget p1, p3, v2

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->access$1400(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;I)V

    goto :goto_0

    .line 954
    :pswitch_2
    aget p1, p3, v2

    aget p3, p3, v1

    invoke-static {v0, p2, p1, p3}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->access$1300(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;II)V

    goto :goto_0

    .line 950
    :pswitch_3
    aget p1, p3, v2

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->access$1200(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;I)V

    goto :goto_0

    .line 945
    :pswitch_4
    aget p1, p3, v2

    if-nez p1, :cond_1

    move v1, v2

    .line 946
    :cond_1
    invoke-static {v0, p2, v1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->access$1100(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;Z)V

    goto :goto_0

    .line 941
    :pswitch_5
    invoke-static {v0, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->access$1000(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onError(II)V
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    if-eqz v0, :cond_0

    .line 931
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->access$900(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;II)V

    :cond_0
    return-void
.end method
