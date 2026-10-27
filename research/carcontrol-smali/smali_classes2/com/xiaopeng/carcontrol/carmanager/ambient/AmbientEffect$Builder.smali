.class public Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;
.super Ljava/lang/Object;
.source "AmbientEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCount:I

.field private mDisplayId:I

.field private mHue:Z

.field private mName:Ljava/lang/String;

.field private mPackets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientData;",
            ">;"
        }
    .end annotation
.end field

.field private mRhythm:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uuid"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mCount:I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mDisplayId:I

    .line 57
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mRhythm:Z

    .line 58
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mHue:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mPackets:Ljava/util/List;

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect;
    .locals 9

    .line 102
    new-instance v8, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mCount:I

    iget v3, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mDisplayId:I

    iget-boolean v4, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mRhythm:Z

    iget-boolean v5, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mHue:Z

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mPackets:Ljava/util/List;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect;-><init>(Ljava/lang/String;IIZZLjava/util/List;Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$1;)V

    return-object v8
.end method

.method public setCount(I)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 66
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mCount:I

    return-object p0
.end method

.method public setHue(I)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayId"
        }
    .end annotation

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mHue:Z

    .line 77
    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mDisplayId:I

    return-object p0
.end method

.method public setRhythm()Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mRhythm:Z

    return-object p0
.end method

.method public setSequence(IIIII)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "group",
            "color",
            "bright",
            "fade",
            "period"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mPackets:Ljava/util/List;

    new-instance v7, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientData;

    move-object v1, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientData;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setSequence(I[IIII)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "group",
            "colors",
            "bright",
            "fade",
            "period"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mPackets:Ljava/util/List;

    new-instance v7, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientData;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v1, 0x0

    aput p1, v2, v1

    move-object v1, v7

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientData;-><init>([I[IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setSequence([IIIII)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "groups",
            "color",
            "bright",
            "fade",
            "period"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mPackets:Ljava/util/List;

    new-instance v7, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientData;

    const/4 v1, 0x1

    new-array v3, v1, [I

    const/4 v1, 0x0

    aput p2, v3, v1

    move-object v1, v7

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientData;-><init>([I[IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setSequence([I[IIII)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "groups",
            "colors",
            "bright",
            "fade",
            "period"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect$Builder;->mPackets:Ljava/util/List;

    new-instance v7, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientData;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientData;-><init>([I[IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
