.class public Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureSuperscriptSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TemperatureSuperscriptSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field private static final OFFSET:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureSuperscriptSpan;->OFFSET:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 27
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureSuperscriptSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    .line 37
    const/16 v0, 0xe

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .line 56
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    sget v1, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureSuperscriptSpan;->OFFSET:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 57
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .line 61
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    sget v1, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureSuperscriptSpan;->OFFSET:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 62
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureSuperscriptSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 48
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 52
    return-void
.end method
