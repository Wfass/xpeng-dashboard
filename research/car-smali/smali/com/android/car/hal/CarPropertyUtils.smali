.class final Lcom/android/car/hal/CarPropertyUtils;
.super Ljava/lang/Object;
.source "CarPropertyUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static classMatched(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 262
    .local p0, "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "class2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq p0, p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static getJavaClass(I)Ljava/lang/Class;
    .locals 3
    .param p0, "halType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 223
    const/high16 v0, 0x100000

    if-eq p0, v0, :cond_9

    const/high16 v0, 0x200000

    if-eq p0, v0, :cond_8

    const/high16 v0, 0x400000

    if-eq p0, v0, :cond_7

    const/high16 v0, 0x410000

    if-eq p0, v0, :cond_6

    const/high16 v0, 0x500000

    if-eq p0, v0, :cond_5

    const/high16 v0, 0x510000

    if-eq p0, v0, :cond_4

    const/high16 v0, 0x600000

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x610000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x700000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0xe00000

    if-ne p0, v0, :cond_0

    .line 243
    const-class v0, Ljava/lang/Object;

    return-object v0

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_1
    const-class v0, [B

    return-object v0

    .line 233
    :cond_2
    const-class v0, [Ljava/lang/Float;

    return-object v0

    .line 227
    :cond_3
    const-class v0, Ljava/lang/Float;

    return-object v0

    .line 237
    :cond_4
    const-class v0, [Ljava/lang/Long;

    return-object v0

    .line 231
    :cond_5
    const-class v0, Ljava/lang/Long;

    return-object v0

    .line 235
    :cond_6
    const-class v0, [Ljava/lang/Integer;

    return-object v0

    .line 229
    :cond_7
    const-class v0, Ljava/lang/Integer;

    return-object v0

    .line 225
    :cond_8
    const-class v0, Ljava/lang/Boolean;

    return-object v0

    .line 239
    :cond_9
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getRawValueList(Ljava/lang/Class;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;)Ljava/util/List;
    .locals 3
    .param p1, "value"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;",
            ")",
            "Ljava/util/List;"
        }
    .end annotation

    .line 250
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Float;

    invoke-static {v0, p0}, Lcom/android/car/hal/CarPropertyUtils;->classMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    const-class v0, [Ljava/lang/Float;

    invoke-static {v0, p0}, Lcom/android/car/hal/CarPropertyUtils;->classMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 252
    :cond_0
    const-class v0, Ljava/lang/Integer;

    invoke-static {v0, p0}, Lcom/android/car/hal/CarPropertyUtils;->classMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    const-class v0, [Ljava/lang/Integer;

    invoke-static {v0, p0}, Lcom/android/car/hal/CarPropertyUtils;->classMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 254
    :cond_1
    const-class v0, Ljava/lang/Long;

    invoke-static {v0, p0}, Lcom/android/car/hal/CarPropertyUtils;->classMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, [Ljava/lang/Long;

    invoke-static {v0, p0}, Lcom/android/car/hal/CarPropertyUtils;->classMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 257
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_3
    :goto_0
    iget-object v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    return-object v0

    .line 253
    :cond_4
    :goto_1
    iget-object v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    return-object v0

    .line 251
    :cond_5
    :goto_2
    iget-object v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static getVehicleAreaType(I)I
    .locals 3
    .param p0, "halArea"    # I

    .line 204
    const/high16 v0, 0x1000000

    if-eq p0, v0, :cond_5

    const/high16 v0, 0x3000000

    if-eq p0, v0, :cond_4

    const/high16 v0, 0x4000000

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x5000000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x6000000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x7000000

    if-ne p0, v0, :cond_0

    .line 216
    const/4 v0, 0x6

    return v0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported area type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_1
    const/4 v0, 0x4

    return v0

    .line 208
    :cond_2
    const/4 v0, 0x3

    return v0

    .line 214
    :cond_3
    const/4 v0, 0x5

    return v0

    .line 212
    :cond_4
    const/4 v0, 0x2

    return v0

    .line 206
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method static toCarPropertyConfig(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;I)Landroid/car/hardware/CarPropertyConfig;
    .locals 10
    .param p0, "p"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .param p1, "propertyId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            "I)",
            "Landroid/car/hardware/CarPropertyConfig<",
            "*>;"
        }
    .end annotation

    .line 149
    iget v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    const/high16 v1, 0xf000000

    and-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/car/hal/CarPropertyUtils;->getVehicleAreaType(I)I

    move-result v0

    .line 151
    .local v0, "areaType":I
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 152
    .local v1, "areas":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 153
    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;

    iget v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->areaId:I

    aput v3, v1, v2

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v2    # "i":I
    :cond_0
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    invoke-static {v2}, Lcom/android/car/hal/CarPropertyUtils;->getJavaClass(I)Ljava/lang/Class;

    move-result-object v2

    .line 157
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    nop

    .line 159
    const/4 v3, 0x1

    invoke-static {v2, p1, v0, v3}, Landroid/car/hardware/CarPropertyConfig;->newBuilder(Ljava/lang/Class;III)Landroid/car/hardware/CarPropertyConfig$Builder;

    move-result-object v3

    .line 160
    invoke-virtual {v3, v1}, Landroid/car/hardware/CarPropertyConfig$Builder;->addAreas([I)Landroid/car/hardware/CarPropertyConfig$Builder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    .line 161
    invoke-virtual {v3, v4}, Landroid/car/hardware/CarPropertyConfig$Builder;->setAccess(I)Landroid/car/hardware/CarPropertyConfig$Builder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    .line 162
    invoke-virtual {v3, v4}, Landroid/car/hardware/CarPropertyConfig$Builder;->setChangeMode(I)Landroid/car/hardware/CarPropertyConfig$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v3, v4}, Landroid/car/hardware/CarPropertyConfig$Builder;->setConfigArray(Ljava/util/ArrayList;)Landroid/car/hardware/CarPropertyConfig$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

    .line 164
    invoke-virtual {v3, v4}, Landroid/car/hardware/CarPropertyConfig$Builder;->setConfigString(Ljava/lang/String;)Landroid/car/hardware/CarPropertyConfig$Builder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    .line 165
    invoke-virtual {v3, v4}, Landroid/car/hardware/CarPropertyConfig$Builder;->setMaxSampleRate(F)Landroid/car/hardware/CarPropertyConfig$Builder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    .line 166
    invoke-virtual {v3, v4}, Landroid/car/hardware/CarPropertyConfig$Builder;->setMinSampleRate(F)Landroid/car/hardware/CarPropertyConfig$Builder;

    move-result-object v3

    .line 167
    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyConfig$Builder;->build()Landroid/car/hardware/CarPropertyConfig;

    move-result-object v3

    .line 158
    return-object v3

    .line 169
    :cond_1
    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    .line 170
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, p1, v0, v3}, Landroid/car/hardware/CarPropertyConfig;->newBuilder(Ljava/lang/Class;III)Landroid/car/hardware/CarPropertyConfig$Builder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    .line 171
    invoke-virtual {v3, v4}, Landroid/car/hardware/CarPropertyConfig$Builder;->setAccess(I)Landroid/car/hardware/CarPropertyConfig$Builder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    .line 172
    invoke-virtual {v3, v4}, Landroid/car/hardware/CarPropertyConfig$Builder;->setChangeMode(I)Landroid/car/hardware/CarPropertyConfig$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    .line 173
    invoke-virtual {v3, v4}, Landroid/car/hardware/CarPropertyConfig$Builder;->setConfigArray(Ljava/util/ArrayList;)Landroid/car/hardware/CarPropertyConfig$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

    .line 174
    invoke-virtual {v3, v4}, Landroid/car/hardware/CarPropertyConfig$Builder;->setConfigString(Ljava/lang/String;)Landroid/car/hardware/CarPropertyConfig$Builder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    .line 175
    invoke-virtual {v3, v4}, Landroid/car/hardware/CarPropertyConfig$Builder;->setMaxSampleRate(F)Landroid/car/hardware/CarPropertyConfig$Builder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    .line 176
    invoke-virtual {v3, v4}, Landroid/car/hardware/CarPropertyConfig$Builder;->setMinSampleRate(F)Landroid/car/hardware/CarPropertyConfig$Builder;

    move-result-object v3

    .line 178
    .local v3, "builder":Landroid/car/hardware/CarPropertyConfig$Builder;
    iget-object v4, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;

    .line 179
    .local v5, "area":Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;
    const-class v6, Ljava/lang/Integer;

    invoke-static {v6, v2}, Lcom/android/car/hal/CarPropertyUtils;->classMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 180
    iget v6, v5, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->areaId:I

    iget v7, v5, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->minInt32Value:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v5, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->maxInt32Value:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Landroid/car/hardware/CarPropertyConfig$Builder;->addAreaConfig(ILjava/lang/Object;Ljava/lang/Object;)Landroid/car/hardware/CarPropertyConfig$Builder;

    goto/16 :goto_3

    .line 181
    :cond_2
    const-class v6, Ljava/lang/Float;

    invoke-static {v6, v2}, Lcom/android/car/hal/CarPropertyUtils;->classMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 182
    iget v6, v5, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->areaId:I

    iget v7, v5, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->minFloatValue:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v8, v5, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->maxFloatValue:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Landroid/car/hardware/CarPropertyConfig$Builder;->addAreaConfig(ILjava/lang/Object;Ljava/lang/Object;)Landroid/car/hardware/CarPropertyConfig$Builder;

    goto :goto_3

    .line 183
    :cond_3
    const-class v6, Ljava/lang/Long;

    invoke-static {v6, v2}, Lcom/android/car/hal/CarPropertyUtils;->classMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 184
    iget v6, v5, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->areaId:I

    iget-wide v7, v5, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->minInt64Value:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, v5, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->maxInt64Value:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Landroid/car/hardware/CarPropertyConfig$Builder;->addAreaConfig(ILjava/lang/Object;Ljava/lang/Object;)Landroid/car/hardware/CarPropertyConfig$Builder;

    goto :goto_3

    .line 185
    :cond_4
    const-class v6, Ljava/lang/Boolean;

    invoke-static {v6, v2}, Lcom/android/car/hal/CarPropertyUtils;->classMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_6

    const-class v6, [Ljava/lang/Float;

    .line 186
    invoke-static {v6, v2}, Lcom/android/car/hal/CarPropertyUtils;->classMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_6

    const-class v6, [Ljava/lang/Integer;

    .line 187
    invoke-static {v6, v2}, Lcom/android/car/hal/CarPropertyUtils;->classMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_6

    const-class v6, [Ljava/lang/Long;

    .line 188
    invoke-static {v6, v2}, Lcom/android/car/hal/CarPropertyUtils;->classMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_6

    const-class v6, Ljava/lang/String;

    .line 189
    invoke-static {v6, v2}, Lcom/android/car/hal/CarPropertyUtils;->classMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_6

    const-class v6, [B

    .line 190
    invoke-static {v6, v2}, Lcom/android/car/hal/CarPropertyUtils;->classMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_6

    const-class v6, Ljava/lang/Object;

    .line 191
    invoke-static {v6, v2}, Lcom/android/car/hal/CarPropertyUtils;->classMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    .line 195
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 193
    :cond_6
    :goto_2
    iget v6, v5, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->areaId:I

    invoke-virtual {v3, v6}, Landroid/car/hardware/CarPropertyConfig$Builder;->addArea(I)Landroid/car/hardware/CarPropertyConfig$Builder;

    .line 197
    .end local v5    # "area":Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;
    :goto_3
    goto/16 :goto_1

    .line 199
    :cond_7
    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyConfig$Builder;->build()Landroid/car/hardware/CarPropertyConfig;

    move-result-object v4

    return-object v4
.end method

.method static toCarPropertyValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;I)Landroid/car/hardware/CarPropertyValue;
    .locals 16
    .param p0, "halValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .param p1, "propertyId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            "I)",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 44
    iget v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    invoke-static {v1}, Lcom/android/car/hal/CarPropertyUtils;->getJavaClass(I)Ljava/lang/Class;

    move-result-object v1

    .line 45
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v9, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    .line 46
    .local v9, "areaId":I
    iget v10, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->status:I

    .line 47
    .local v10, "status":I
    iget-wide v11, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    .line 48
    .local v11, "timestamp":J
    iget-object v13, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    .line 50
    .local v13, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;
    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v1, :cond_1

    .line 51
    new-instance v14, Landroid/car/hardware/CarPropertyValue;

    iget-object v2, v13, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v2, v14

    move/from16 v3, p1

    move v4, v9

    move v5, v10

    move-wide v6, v11

    invoke-direct/range {v2 .. v8}, Landroid/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    .line 51
    return-object v14

    .line 53
    :cond_1
    const-class v2, Ljava/lang/Float;

    if-ne v2, v1, :cond_2

    .line 54
    new-instance v14, Landroid/car/hardware/CarPropertyValue;

    iget-object v2, v13, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/Float;

    move-object v2, v14

    move/from16 v3, p1

    move v4, v9

    move v5, v10

    move-wide v6, v11

    invoke-direct/range {v2 .. v8}, Landroid/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    .line 54
    return-object v14

    .line 56
    :cond_2
    const-class v2, Ljava/lang/Integer;

    if-ne v2, v1, :cond_3

    .line 57
    new-instance v14, Landroid/car/hardware/CarPropertyValue;

    iget-object v2, v13, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/Integer;

    move-object v2, v14

    move/from16 v3, p1

    move v4, v9

    move v5, v10

    move-wide v6, v11

    invoke-direct/range {v2 .. v8}, Landroid/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    .line 57
    return-object v14

    .line 59
    :cond_3
    const-class v2, Ljava/lang/Long;

    if-ne v2, v1, :cond_4

    .line 60
    new-instance v14, Landroid/car/hardware/CarPropertyValue;

    iget-object v2, v13, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/Long;

    move-object v2, v14

    move/from16 v3, p1

    move v4, v9

    move v5, v10

    move-wide v6, v11

    invoke-direct/range {v2 .. v8}, Landroid/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    .line 60
    return-object v14

    .line 62
    :cond_4
    const-class v2, [Ljava/lang/Float;

    if-ne v2, v1, :cond_6

    .line 63
    iget-object v2, v13, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v14, v2, [Ljava/lang/Float;

    .line 64
    .local v14, "values":[Ljava/lang/Float;
    nop

    .local v4, "i":I
    :goto_1
    move v2, v4

    .end local v4    # "i":I
    .local v2, "i":I
    array-length v3, v14

    if-ge v2, v3, :cond_5

    .line 65
    iget-object v3, v13, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    aput-object v3, v14, v2

    .line 64
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 67
    .end local v4    # "i":I
    :cond_5
    new-instance v15, Landroid/car/hardware/CarPropertyValue;

    move-object v2, v15

    move/from16 v3, p1

    move v4, v9

    move v5, v10

    move-wide v6, v11

    move-object v8, v14

    invoke-direct/range {v2 .. v8}, Landroid/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    return-object v15

    .line 68
    .end local v14    # "values":[Ljava/lang/Float;
    :cond_6
    const-class v2, [Ljava/lang/Integer;

    if-ne v2, v1, :cond_8

    .line 69
    iget-object v2, v13, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v14, v2, [Ljava/lang/Integer;

    .line 70
    .local v14, "values":[Ljava/lang/Integer;
    nop

    .restart local v4    # "i":I
    :goto_2
    move v2, v4

    .end local v4    # "i":I
    .restart local v2    # "i":I
    array-length v3, v14

    if-ge v2, v3, :cond_7

    .line 71
    iget-object v3, v13, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    aput-object v3, v14, v2

    .line 70
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 73
    .end local v4    # "i":I
    :cond_7
    new-instance v15, Landroid/car/hardware/CarPropertyValue;

    move-object v2, v15

    move/from16 v3, p1

    move v4, v9

    move v5, v10

    move-wide v6, v11

    move-object v8, v14

    invoke-direct/range {v2 .. v8}, Landroid/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    return-object v15

    .line 74
    .end local v14    # "values":[Ljava/lang/Integer;
    :cond_8
    const-class v2, Ljava/lang/String;

    if-ne v2, v1, :cond_9

    .line 75
    new-instance v14, Landroid/car/hardware/CarPropertyValue;

    iget-object v8, v13, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

    move-object v2, v14

    move/from16 v3, p1

    move v4, v9

    move v5, v10

    move-wide v6, v11

    invoke-direct/range {v2 .. v8}, Landroid/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    return-object v14

    .line 76
    :cond_9
    const-class v2, [B

    if-ne v2, v1, :cond_a

    .line 77
    iget-object v2, v13, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/car/CarServiceUtils;->toByteArray(Ljava/util/List;)[B

    move-result-object v14

    .line 78
    .local v14, "halData":[B
    new-instance v15, Landroid/car/hardware/CarPropertyValue;

    move-object v2, v15

    move/from16 v3, p1

    move v4, v9

    move v5, v10

    move-wide v6, v11

    move-object v8, v14

    invoke-direct/range {v2 .. v8}, Landroid/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    return-object v15

    .line 79
    .end local v14    # "halData":[B
    :cond_a
    const-class v2, [Ljava/lang/Long;

    if-ne v2, v1, :cond_c

    .line 80
    iget-object v2, v13, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v14, v2, [Ljava/lang/Long;

    .line 81
    .local v14, "values":[Ljava/lang/Long;
    nop

    .restart local v4    # "i":I
    :goto_3
    move v2, v4

    .end local v4    # "i":I
    .restart local v2    # "i":I
    array-length v3, v14

    if-ge v2, v3, :cond_b

    .line 82
    iget-object v3, v13, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    aput-object v3, v14, v2

    .line 81
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    .line 84
    .end local v4    # "i":I
    :cond_b
    new-instance v15, Landroid/car/hardware/CarPropertyValue;

    move-object v2, v15

    move/from16 v3, p1

    move v4, v9

    move v5, v10

    move-wide v6, v11

    move-object v8, v14

    invoke-direct/range {v2 .. v8}, Landroid/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    return-object v15

    .line 86
    .end local v14    # "values":[Ljava/lang/Long;
    :cond_c
    invoke-static {v1, v13}, Lcom/android/car/hal/CarPropertyUtils;->getRawValueList(Ljava/lang/Class;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v14

    .line 87
    .local v14, "values":[Ljava/lang/Object;
    new-instance v15, Landroid/car/hardware/CarPropertyValue;

    .line 88
    array-length v2, v14

    if-ne v2, v3, :cond_d

    aget-object v2, v14, v4

    move-object v8, v2

    goto :goto_4

    :cond_d
    move-object v8, v14

    :goto_4
    move-object v2, v15

    move/from16 v3, p1

    move v4, v9

    move v5, v10

    move-wide v6, v11

    invoke-direct/range {v2 .. v8}, Landroid/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    .line 87
    return-object v15
.end method

.method static toVehiclePropValue(Landroid/car/hardware/CarPropertyValue;I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 10
    .param p0, "carProp"    # Landroid/car/hardware/CarPropertyValue;
    .param p1, "halPropId"    # I

    .line 94
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;-><init>()V

    .line 95
    .local v0, "vehicleProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iput p1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 96
    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v1

    iput v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    .line 97
    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyValue;->getTxPid()I

    move-result v1

    iput v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->txPid:I

    .line 98
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    .line 100
    .local v1, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;
    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 102
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 104
    :cond_0
    instance-of v3, v2, [Ljava/lang/Boolean;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 105
    move-object v3, v2

    check-cast v3, [Ljava/lang/Boolean;

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_c

    aget-object v6, v3, v4

    .line 106
    .local v6, "b":Ljava/lang/Boolean;
    iget-object v7, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v6    # "b":Ljava/lang/Boolean;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    :cond_1
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 109
    iget-object v3, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 110
    :cond_2
    instance-of v3, v2, [Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 111
    iget-object v3, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, [Ljava/lang/Integer;

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 112
    :cond_3
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_4

    .line 113
    iget-object v3, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 114
    :cond_4
    instance-of v3, v2, [Ljava/lang/Float;

    if-eqz v3, :cond_5

    .line 115
    iget-object v3, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, [Ljava/lang/Float;

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 116
    :cond_5
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_6

    .line 117
    iget-object v3, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 118
    :cond_6
    instance-of v3, v2, [Ljava/lang/Long;

    if-eqz v3, :cond_7

    .line 119
    iget-object v3, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, [Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 120
    :cond_7
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 121
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

    goto :goto_5

    .line 122
    :cond_8
    instance-of v3, v2, [B

    if-eqz v3, :cond_9

    .line 123
    move-object v3, v2

    check-cast v3, [B

    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_c

    aget-byte v6, v3, v4

    .line 124
    .local v6, "b":B
    iget-object v7, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v6    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 126
    :cond_9
    instance-of v3, v2, [I

    if-eqz v3, :cond_a

    .line 127
    move-object v3, v2

    check-cast v3, [I

    array-length v5, v3

    :goto_2
    if-ge v4, v5, :cond_c

    aget v6, v3, v4

    .line 128
    .local v6, "b":I
    iget-object v7, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v6    # "b":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 130
    :cond_a
    instance-of v3, v2, [F

    if-eqz v3, :cond_b

    .line 131
    move-object v3, v2

    check-cast v3, [F

    array-length v5, v3

    :goto_3
    if-ge v4, v5, :cond_c

    aget v6, v3, v4

    .line 132
    .local v6, "b":F
    iget-object v7, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v6    # "b":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 134
    :cond_b
    instance-of v3, v2, [J

    if-eqz v3, :cond_d

    .line 135
    move-object v3, v2

    check-cast v3, [J

    array-length v5, v3

    :goto_4
    if-ge v4, v5, :cond_c

    aget-wide v6, v3, v4

    .line 136
    .local v6, "b":J
    iget-object v8, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v6    # "b":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 142
    :cond_c
    :goto_5
    return-object v0

    .line 139
    :cond_d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected type in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
