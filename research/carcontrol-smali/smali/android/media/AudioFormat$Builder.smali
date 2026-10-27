.class public Landroid/media/AudioFormat$Builder;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mEncoding:I

.field private mPropertySetMask:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1086
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 1087
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 1088
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 1089
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    .line 1090
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioFormat;)V
    .locals 1

    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1086
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 1087
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 1088
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 1089
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    .line 1090
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 1103
    invoke-static {p1}, Landroid/media/AudioFormat;->access$000(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 1104
    invoke-static {p1}, Landroid/media/AudioFormat;->access$100(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 1105
    invoke-static {p1}, Landroid/media/AudioFormat;->access$200(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 1106
    invoke-static {p1}, Landroid/media/AudioFormat;->access$300(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    .line 1107
    invoke-static {p1}, Landroid/media/AudioFormat;->access$400(Landroid/media/AudioFormat;)I

    move-result p1

    iput p1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-void
.end method


# virtual methods
.method public build()Landroid/media/AudioFormat;
    .locals 8

    .line 1116
    new-instance v7, Landroid/media/AudioFormat;

    iget v1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    iget v2, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    iget v3, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    iget v4, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    iget v5, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioFormat;-><init>(IIIIILandroid/media/AudioFormat$1;)V

    return-object v7
.end method

.method public setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;
    .locals 3

    if-eqz p1, :cond_2

    .line 1263
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    if-eqz v0, :cond_1

    .line 1264
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1265
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched channel count for index mask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1266
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1268
    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    .line 1269
    iget p1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-object p0

    .line 1262
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid zero channel index mask"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setChannelMask(I)Landroid/media/AudioFormat$Builder;
    .locals 3

    if-eqz p1, :cond_2

    .line 1210
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    if-eqz v0, :cond_1

    .line 1211
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1212
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched channel count for mask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1213
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1215
    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 1216
    iget p1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-object p0

    .line 1209
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid zero channel mask"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEncoding(I)Landroid/media/AudioFormat$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 1168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1164
    :pswitch_0
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x2

    .line 1135
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 1170
    :goto_0
    iget p1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setSampleRate(I)Landroid/media/AudioFormat$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1283
    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    if-lt p1, v0, :cond_0

    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    if-le p1, v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 1287
    :cond_1
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 1288
    iget p1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-object p0

    .line 1285
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sample rate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
