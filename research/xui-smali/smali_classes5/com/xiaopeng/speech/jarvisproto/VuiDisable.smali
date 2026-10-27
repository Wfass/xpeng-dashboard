.class public Lcom/xiaopeng/speech/jarvisproto/VuiDisable;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "VuiDisable.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "disable.vui.feature"


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

    .line 12
    const-string v0, "disable.vui.feature"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 1

    .line 16
    const-string v0, ""

    return-object v0
.end method
