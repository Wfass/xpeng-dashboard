.class public Lcom/xiaopeng/speech/jarvisproto/VuiEnable;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "VuiEnable.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "enable.vui.feature"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "enable.vui.feature"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
