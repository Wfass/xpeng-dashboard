.class public Landroid/hardware/camera2/CameraManager$Parameters;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Parameters"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AVM_3603DANGLE:Ljava/lang/String; = "3603d_angle"

.field private static final AVM_CALIBRATION:Ljava/lang/String; = "calibration"

.field private static final AVM_DISPLAYMODE:Ljava/lang/String; = "display-mode"

.field private static final AVM_FINETUNEMODE:Ljava/lang/String; = "finetune-mode"

.field private static final AVM_OVERLAYWORKST:Ljava/lang/String; = "overlay-workst"

.field private static final AVM_TRANSBODY:Ljava/lang/String; = "transbody"

.field private static final AVM_TRANSPCWORKST:Ljava/lang/String; = "transparentchassis-workst"

.field private static final AVM_WORKSTATUS:Ljava/lang/String; = "work-status"

.field private static final CHANNEL0_DISPLAYMODE:Ljava/lang/String; = "channel0-display-mode"

.field private static final CHANNEL1_DISPLAYMODE:Ljava/lang/String; = "channel1-display-mode"

.field private static final CIU_OUTMODE:Ljava/lang/String; = "out-mode"


# instance fields
.field private final mMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/camera2/CameraManager;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/CameraManager;)V
    .locals 1

    .line 2572
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$Parameters;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2573
    new-instance p1, Ljava/util/LinkedHashMap;

    const/16 v0, 0x40

    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$Parameters;->mMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/CameraManager;Landroid/hardware/camera2/CameraManager$1;)V
    .locals 0

    .line 2547
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$Parameters;-><init>(Landroid/hardware/camera2/CameraManager;)V

    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2704
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2705
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/hardware/camera2/CameraManager$Parameters;)V
    .locals 1

    const-string v0, "other must not be null"

    .line 2585
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2588
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$Parameters;->mMap:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Landroid/hardware/camera2/CameraManager$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public dump()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2614
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public flatten()Ljava/lang/String;
    .locals 4

    .line 2628
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2629
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2630
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 2631
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2632
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    .line 2633
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2636
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2637
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2716
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public get3603dAngle()I
    .locals 1

    const-string v0, "3603d_angle"

    .line 2810
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAvmCalibration()I
    .locals 1

    const-string v0, "calibration"

    .line 2790
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAvmDisplayMode()I
    .locals 1

    const-string v0, "display-mode"

    .line 2775
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAvmFineTuneMode()I
    .locals 1

    const-string v0, "finetune-mode"

    .line 2802
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAvmOverlayWorkSt()I
    .locals 1

    const-string v0, "overlay-workst"

    .line 2795
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAvmTransparentChassisWorkSt()I
    .locals 1

    const-string/jumbo v0, "transparentchassis-workst"

    .line 2798
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAvmWorkState()I
    .locals 1

    const-string/jumbo v0, "work-status"

    .line 2806
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getChannel0DisplayMode()I
    .locals 1

    const-string v0, "channel0-display-mode"

    .line 2780
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getChannel1DisplayMode()I
    .locals 1

    const-string v0, "channel1-display-mode"

    .line 2785
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    .line 2726
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getTransBodySwitchStatus()I
    .locals 1

    const-string/jumbo v0, "transbody"

    .line 2814
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 2665
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public same(Landroid/hardware/camera2/CameraManager$Parameters;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 2601
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$Parameters;->mMap:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Landroid/hardware/camera2/CameraManager$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(Ljava/lang/String;I)V
    .locals 0

    .line 2694
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$Parameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v0, 0x3d

    .line 2675
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "\" contains invalid character (= or ; or \\0)"

    const-string v3, "CameraManager"

    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v4, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v4, :cond_0

    goto :goto_1

    .line 2679
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v4, :cond_1

    goto :goto_0

    .line 2684
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$Parameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2680
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Value \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2676
    :cond_3
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAvm3603DAngel(I)V
    .locals 1

    const-string v0, "3603d_angle"

    .line 2766
    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CameraManager$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setAvmCalibration(I)V
    .locals 1

    const-string v0, "calibration"

    .line 2743
    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CameraManager$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setAvmDisplayMode(I)V
    .locals 1

    const-string v0, "display-mode"

    .line 2731
    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CameraManager$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setAvmFineTuneMode(I)V
    .locals 1

    const-string v0, "finetune-mode"

    .line 2755
    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CameraManager$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setAvmOutMode(I)V
    .locals 1

    const-string v0, "out-mode"

    .line 2758
    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CameraManager$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setAvmOverlayWorkSt(I)V
    .locals 1

    const-string v0, "overlay-workst"

    .line 2747
    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CameraManager$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setAvmTransBody(I)V
    .locals 1

    const-string/jumbo v0, "transbody"

    .line 2770
    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CameraManager$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setAvmTransparentChassisWorkSt(I)V
    .locals 1

    const-string/jumbo v0, "transparentchassis-workst"

    .line 2751
    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CameraManager$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setAvmWorkState(I)V
    .locals 1

    const-string/jumbo v0, "work-status"

    .line 2762
    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CameraManager$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setChannel0DisplayMode(I)V
    .locals 1

    const-string v0, "channel0-display-mode"

    .line 2735
    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CameraManager$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setChannel1DisplayMode(I)V
    .locals 1

    const-string v0, "channel1-display-mode"

    .line 2739
    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CameraManager$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public unflatten(Ljava/lang/String;)V
    .locals 3

    .line 2649
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 2651
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 2652
    invoke-interface {v0, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 2653
    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x3d

    .line 2654
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2658
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 2659
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2660
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
