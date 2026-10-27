.class public Lcom/xiaopeng/smartcontrol/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/utils/Constants$SETTINGS_MODULE;,
        Lcom/xiaopeng/smartcontrol/utils/Constants$CAR_CONTROL_MODULE;,
        Lcom/xiaopeng/smartcontrol/utils/Constants$APPID;
    }
.end annotation


# static fields
.field public static final BIND_SERVICE_ACTION:Ljava/lang/String; = "com.xiaopeng.smartcontrol.BindAidlService"

.field public static final SDK_BINDER_PREFFIX:Ljava/lang/String; = "SmartControlSDKServiceBinder_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
