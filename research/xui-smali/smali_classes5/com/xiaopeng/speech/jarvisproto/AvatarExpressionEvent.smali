.class public Lcom/xiaopeng/speech/jarvisproto/AvatarExpressionEvent;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "AvatarExpressionEvent.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.avatar.expression"


# instance fields
.field public data:Ljava/lang/String;


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
    const-string v0, "jarvis.avatar.expression"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarExpressionEvent;->data:Ljava/lang/String;

    return-object v0
.end method
