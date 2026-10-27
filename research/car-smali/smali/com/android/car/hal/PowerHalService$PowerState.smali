.class public final Lcom/android/car/hal/PowerHalService$PowerState;
.super Ljava/lang/Object;
.source "PowerHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/PowerHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PowerState"
.end annotation


# instance fields
.field public final mParam:I

.field public final mState:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "param"    # I

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p1, p0, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    .line 137
    iput p2, p0, Lcom/android/car/hal/PowerHalService$PowerState;->mParam:I

    .line 138
    return-void
.end method


# virtual methods
.method public canEnterDeepSleep()Z
    .locals 2

    .line 147
    iget v0, p0, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 150
    iget v0, p0, Lcom/android/car/hal/PowerHalService$PowerState;->mParam:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 148
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "wrong state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canPostponeShutdown()Z
    .locals 2

    .line 160
    iget v0, p0, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 163
    iget v0, p0, Lcom/android/car/hal/PowerHalService$PowerState;->mParam:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 161
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "wrong state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canShutdownImmediately()Z
    .locals 2

    .line 167
    iget v0, p0, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 170
    iget v0, p0, Lcom/android/car/hal/PowerHalService$PowerState;->mParam:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 168
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "wrong state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 175
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 176
    return v0

    .line 178
    :cond_0
    instance-of v1, p1, Lcom/android/car/hal/PowerHalService$PowerState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 179
    return v2

    .line 181
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/car/hal/PowerHalService$PowerState;

    .line 182
    .local v1, "that":Lcom/android/car/hal/PowerHalService$PowerState;
    iget v3, p0, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    iget v4, v1, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/car/hal/PowerHalService$PowerState;->mParam:I

    iget v4, v1, Lcom/android/car/hal/PowerHalService$PowerState;->mParam:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerState state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", param:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/hal/PowerHalService$PowerState;->mParam:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
