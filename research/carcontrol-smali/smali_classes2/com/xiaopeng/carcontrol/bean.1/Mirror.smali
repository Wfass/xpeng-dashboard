.class public Lcom/xiaopeng/carcontrol/bean/Mirror;
.super Ljava/lang/Object;
.source "Mirror.java"


# static fields
.field public static final MIRROR_POS_THRESHOLD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Mirror"


# instance fields
.field public isFolded:Z

.field public leftHPos:I

.field public leftHPosR:I

.field public leftVPos:I

.field public leftVPosR:I

.field public rightHPos:I

.field public rightHPosR:I

.field public rightVPos:I

.field public rightVPosR:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 25
    iput v0, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPos:I

    .line 30
    iput v0, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPos:I

    .line 35
    iput v0, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPos:I

    .line 40
    iput v0, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPos:I

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getDefaultMirrorReversePos"

    .line 50
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPosR:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 55
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    iput v1, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPosR:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 60
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    const/4 v3, 0x2

    aget v1, v1, v3

    iput v1, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPosR:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    invoke-static {v2, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPosR:I

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/Mirror;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonString"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/Mirror;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/Mirror;-><init>()V

    .line 80
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 82
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, [I

    invoke-virtual {v2, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 83
    aget v2, p0, v1

    iput v2, v0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPos:I

    const/4 v2, 0x1

    .line 84
    aget v2, p0, v2

    iput v2, v0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPos:I

    const/4 v2, 0x2

    .line 85
    aget v2, p0, v2

    iput v2, v0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPos:I

    const/4 v2, 0x3

    .line 86
    aget v2, p0, v2

    iput v2, v0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPos:I

    const/4 v2, 0x4

    .line 87
    aget v2, p0, v2

    iput v2, v0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPosR:I

    const/4 v2, 0x5

    .line 88
    aget v2, p0, v2

    iput v2, v0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPosR:I

    const/4 v2, 0x6

    .line 89
    aget v2, p0, v2

    iput v2, v0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPosR:I

    const/4 v2, 0x7

    .line 90
    aget p0, p0, v2

    iput p0, v0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPosR:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", jsonString"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Mirror"

    invoke-static {v2, p0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static isEquals([F[F)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position1",
            "position2"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 100
    array-length v1, p0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    aget v1, p0, v0

    aget v2, p1, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v1, v1, v2

    const/4 v3, 0x1

    if-gtz v1, :cond_1

    aget v1, p0, v3

    aget v4, p1, v3

    sub-float/2addr v1, v4

    .line 104
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const/4 v1, 0x2

    aget v4, p0, v1

    aget v1, p1, v1

    sub-float/2addr v4, v1

    .line 105
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const/4 v1, 0x3

    aget p0, p0, v1

    aget p1, p1, v1

    sub-float/2addr p0, p1

    .line 106
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gtz p0, :cond_1

    move v0, v3

    :cond_1
    :goto_0
    return v0
.end method

.method public static isEquals([I[I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position1",
            "position2"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 111
    array-length v1, p0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    aget v1, p0, v0

    aget v2, p1, v0

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_1

    aget v1, p0, v2

    aget v4, p1, v2

    sub-int/2addr v1, v4

    .line 115
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v3, :cond_1

    aget v1, p0, v3

    aget v4, p1, v3

    sub-int/2addr v1, v4

    .line 116
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v3, :cond_1

    const/4 v1, 0x3

    aget p0, p0, v1

    aget p1, p1, v1

    sub-int/2addr p0, p1

    .line 117
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gt p0, v3, :cond_1

    move v0, v2

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public getMirrorPosition()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 157
    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPos:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPos:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPos:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPos:I

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public isEqualsToPosition([I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 121
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPos:I

    const/4 v1, 0x0

    aget v2, p1, v1

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-gt v0, v3, :cond_0

    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPos:I

    aget v4, p1, v2

    sub-int/2addr v0, v4

    .line 122
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v3, :cond_0

    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPos:I

    aget v4, p1, v3

    sub-int/2addr v0, v4

    .line 123
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v3, :cond_0

    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPos:I

    const/4 v4, 0x3

    aget p1, p1, v4

    sub-int/2addr v0, p1

    .line 124
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-gt p1, v3, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 69
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [I

    iget v2, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPos:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPos:I

    const/4 v3, 0x1

    aput v2, v1, v3

    iget v2, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPos:I

    const/4 v3, 0x2

    aput v2, v1, v3

    iget v2, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPos:I

    const/4 v3, 0x3

    aput v2, v1, v3

    iget v2, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPosR:I

    const/4 v3, 0x4

    aput v2, v1, v3

    iget v2, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPosR:I

    const/4 v3, 0x5

    aput v2, v1, v3

    iget v2, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPosR:I

    const/4 v3, 0x6

    aput v2, v1, v3

    iget v2, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPosR:I

    const/4 v3, 0x7

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateAllPosition(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mirrorSavedPos"
        }
    .end annotation

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 130
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, [I

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_0

    .line 131
    array-length v1, p1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 132
    aget v1, p1, v0

    iput v1, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPos:I

    const/4 v1, 0x1

    .line 133
    aget v1, p1, v1

    iput v1, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPos:I

    const/4 v1, 0x2

    .line 134
    aget v1, p1, v1

    iput v1, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPos:I

    const/4 v1, 0x3

    .line 135
    aget v1, p1, v1

    iput v1, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPos:I

    const/4 v1, 0x4

    .line 136
    aget v1, p1, v1

    iput v1, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPosR:I

    const/4 v1, 0x5

    .line 137
    aget v1, p1, v1

    iput v1, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPosR:I

    const/4 v1, 0x6

    .line 138
    aget v1, p1, v1

    iput v1, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPosR:I

    const/4 v1, 0x7

    .line 139
    aget p1, p1, v1

    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPosR:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", jsonString"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Mirror"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateNormalPosition([I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 148
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 149
    aget v0, p1, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPos:I

    const/4 v0, 0x1

    .line 150
    aget v0, p1, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPos:I

    const/4 v0, 0x2

    .line 151
    aget v0, p1, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPos:I

    const/4 v0, 0x3

    .line 152
    aget p1, p1, v0

    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPos:I

    :cond_0
    return-void
.end method
