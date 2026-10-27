.class public Lcom/xiaopeng/carcontrol/direct/DirectDataForOS5;
.super Ljava/lang/Object;
.source "DirectDataForOS5.java"


# static fields
.field public static final CAR_CONTROL_OS5_AUTHORITY:Ljava/lang/String; = "carcontrol"

.field public static final CAR_CONTROL_OS5_SCHEME:Ljava/lang/String; = "xiaopeng"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static loadPageData()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/carcontrol/direct/PageDirectItem;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    new-instance v1, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    new-instance v2, Lcom/xiaopeng/carcontrol/direct/action/DoorKeySettingPageAction;

    invoke-direct {v2}, Lcom/xiaopeng/carcontrol/direct/action/DoorKeySettingPageAction;-><init>()V

    invoke-direct {v1, v2}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/action/PageAction;)V

    const-string v2, "doorkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v1, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    new-instance v2, Lcom/xiaopeng/carcontrol/direct/action/XKeySettingPageAction;

    invoke-direct {v2}, Lcom/xiaopeng/carcontrol/direct/action/XKeySettingPageAction;-><init>()V

    invoke-direct {v1, v2}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/action/PageAction;)V

    const-string/jumbo v2, "xkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v1, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    new-instance v2, Lcom/xiaopeng/carcontrol/direct/action/SteerControlPageAction;

    invoke-direct {v2}, Lcom/xiaopeng/carcontrol/direct/action/SteerControlPageAction;-><init>()V

    new-instance v3, Lcom/xiaopeng/carcontrol/direct/support/SteerControlAction;

    invoke-direct {v3}, Lcom/xiaopeng/carcontrol/direct/support/SteerControlAction;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string/jumbo v2, "steeradjust"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v1, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    new-instance v2, Lcom/xiaopeng/carcontrol/direct/action/MirrorControlPageAction;

    invoke-direct {v2}, Lcom/xiaopeng/carcontrol/direct/action/MirrorControlPageAction;-><init>()V

    new-instance v3, Lcom/xiaopeng/carcontrol/direct/support/MirrorControlCheckAction;

    invoke-direct {v3}, Lcom/xiaopeng/carcontrol/direct/support/MirrorControlCheckAction;-><init>()V

    invoke-direct {v1, v4, v2, v3}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v2, "mirroradjust"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v1, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    new-instance v2, Lcom/xiaopeng/carcontrol/direct/action/LumbarControlPageAction;

    invoke-direct {v2}, Lcom/xiaopeng/carcontrol/direct/action/LumbarControlPageAction;-><init>()V

    new-instance v3, Lcom/xiaopeng/carcontrol/direct/support/LumbarControlCheckAction;

    invoke-direct {v3}, Lcom/xiaopeng/carcontrol/direct/support/LumbarControlCheckAction;-><init>()V

    invoke-direct {v1, v4, v2, v3}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v2, "lumbar_adjust"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v1, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    new-instance v2, Lcom/xiaopeng/carcontrol/direct/action/ImsControlPageAction;

    invoke-direct {v2}, Lcom/xiaopeng/carcontrol/direct/action/ImsControlPageAction;-><init>()V

    new-instance v3, Lcom/xiaopeng/carcontrol/direct/support/ImsControlCheckAction;

    invoke-direct {v3}, Lcom/xiaopeng/carcontrol/direct/support/ImsControlCheckAction;-><init>()V

    invoke-direct {v1, v4, v2, v3}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v2, "imsadjust"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v1, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    new-instance v2, Lcom/xiaopeng/carcontrol/direct/action/TtmSettingPageAction;

    invoke-direct {v2}, Lcom/xiaopeng/carcontrol/direct/action/TtmSettingPageAction;-><init>()V

    new-instance v3, Lcom/xiaopeng/carcontrol/direct/support/TtmCheckAction;

    invoke-direct {v3}, Lcom/xiaopeng/carcontrol/direct/support/TtmCheckAction;-><init>()V

    invoke-direct {v1, v4, v2, v3}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string/jumbo v2, "ttm"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
