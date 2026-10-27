.class public Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$n;
.super Ljava/lang/Object;
.source "BaseAudioEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/Bitmap;


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$n;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$n;->a:Ljava/lang/String;

    return-object v0
.end method
