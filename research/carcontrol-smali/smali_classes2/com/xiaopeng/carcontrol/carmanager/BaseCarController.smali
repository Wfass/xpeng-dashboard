.class public abstract Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;
.super Ljava/lang/Object;
.source "BaseCarController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;,
        Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Landroid/car/CarManagerBase;",
        "T::",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static EXHIBITION_MODE:Z = false

.field protected static final MOCK_HVAC:Z = false

.field protected static final MOCK_MSM:Z = false


# instance fields
.field protected final SINGLE_THREAD_POOL:Ljava/util/concurrent/ExecutorService;

.field protected final mCallbackLock:Ljava/lang/Object;

.field protected final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mCarManager:Landroid/car/CarManagerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field protected final mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

.field protected mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

.field protected final mIsMainProcess:Z

.field protected final mPropertyIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->SINGLE_THREAD_POOL:Ljava/util/concurrent/ExecutorService;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->mCallbackLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->mIsMainProcess:Z

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getRegisterPropertyIds()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->mPropertyIds:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getInstance()Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    .line 72
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    :cond_0
    return-void
.end method

.method private getCarProperty(I)Landroid/car/hardware/CarPropertyValue;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/CarPropertyValue;

    if-eqz p1, :cond_0

    return-object p1

    .line 163
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Car property not found"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private varargs getPropIdList([Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "BaseCarController"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 188
    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_2

    .line 192
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    array-length v3, p1

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    .line 194
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, "can not buildPropIdList with null key"

    .line 195
    invoke-static {v0, v5, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 198
    :cond_1
    invoke-virtual {p0, v2, v5}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->buildPropIdList(Ljava/util/List;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    .line 189
    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPropIdList error with keys="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected buildPropIdList(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "container",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method protected dependOnXuiManager()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract disconnect()V
.end method

.method protected getCarEventCallback()Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getContentProviderValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "currentValue",
            "defaultVlaue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TE;TE;)TE;"
        }
    .end annotation

    if-eqz p2, :cond_0

    return-object p2

    .line 176
    :cond_0
    new-instance p2, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$BaseCarController$nlC3JU3R2VsTjoYu58MihF28bMo;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$BaseCarController$nlC3JU3R2VsTjoYu58MihF28bMo;-><init>(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-object p3
.end method

.method protected getContentProviderValueBySync(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    return-void
.end method

.method protected final getFloatArrayProperty(I)[F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getCarProperty(I)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getFloatArrayProperty(Landroid/car/hardware/CarPropertyValue;)[F

    move-result-object p1

    return-object p1
.end method

.method protected final getFloatArrayProperty(Landroid/car/hardware/CarPropertyValue;)[F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;)[F"
        }
    .end annotation

    .line 142
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 145
    array-length v0, p1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 146
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 147
    aget-object v2, p1, v1

    .line 148
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_0

    .line 149
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method protected final getFloatProperty(I)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getCarProperty(I)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method protected final getIntArrayProperty(I)[I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getCarProperty(I)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getIntArrayProperty(Landroid/car/hardware/CarPropertyValue;)[I

    move-result-object p1

    return-object p1
.end method

.method protected final getIntArrayProperty(Landroid/car/hardware/CarPropertyValue;)[I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;)[I"
        }
    .end annotation

    .line 118
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 121
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 122
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 123
    aget-object v2, p1, v1

    .line 124
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 125
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method protected final getIntProperty(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getCarProperty(I)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected abstract getRegisterPropertyIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method protected getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "getter",
            "defaultVal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction<",
            "Ljava/lang/Void;",
            "TR;",
            "Ljava/lang/Exception;",
            ">;TR;)TR;"
        }
    .end annotation

    .line 247
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getValue(Ljava/lang/Class;ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;)TE;"
        }
    .end annotation

    .line 169
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "getter",
            "defaultVal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction<",
            "Ljava/lang/Void;",
            "TR;",
            "Ljava/lang/Exception;",
            ">;TR;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 242
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getValue(Ljava/lang/Class;ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getValue(Ljava/lang/Class;ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "propertyId",
            "getter",
            "defaultVal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;I",
            "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction<",
            "Ljava/lang/Void;",
            "TR;",
            "Ljava/lang/Exception;",
            ">;TR;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Car property not found"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 258
    :cond_1
    :goto_0
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getIntProperty(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    move-object p4, p1

    goto :goto_2

    .line 260
    :cond_2
    const-class v1, [Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 261
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getIntArrayProperty(I)[I

    move-result-object p1

    goto :goto_1

    .line 262
    :cond_3
    const-class v1, Ljava/lang/Float;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 263
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getFloatProperty(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1

    .line 264
    :cond_4
    const-class v1, [Ljava/lang/Float;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 265
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getFloatArrayProperty(I)[F

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_5
    move-object p4, v0

    goto :goto_2

    .line 269
    :catchall_0
    :try_start_1
    invoke-interface {p3, v0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 271
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getValue failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "BaseCarController"

    invoke-static {p3, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    return-object p4
.end method

.method protected handleCarEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->handleEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method protected abstract handleEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation
.end method

.method protected handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ljava/util/function/BiConsumer<",
            "TT;TR;>;)V"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;

    .line 297
    invoke-interface {p2, v2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 299
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract initCarManager(Landroid/car/Car;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carClient"
        }
    .end annotation
.end method

.method protected abstract initXuiManager()V
.end method

.method public synthetic lambda$getContentProviderValue$0$BaseCarController(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "key"
        }
    .end annotation

    .line 176
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getContentProviderValueBySync(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$registerBusiness$1$BaseCarController([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "keys"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz v0, :cond_0

    .line 211
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getPropIdList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->mCarManager:Landroid/car/CarManagerBase;

    instance-of v1, v0, Landroid/car/hardware/CarEcuManager;

    if-eqz v1, :cond_0

    .line 214
    check-cast v0, Landroid/car/hardware/CarEcuManager;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getCarEventCallback()Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/CarEcuManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/CarEcuManager;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getCarEventCallback()Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/CarEcuManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 220
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$unregisterBusiness$2$BaseCarController([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "keys"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz v0, :cond_0

    .line 231
    :try_start_0
    instance-of v1, v0, Landroid/car/hardware/CarEcuManager;

    if-eqz v1, :cond_0

    .line 232
    check-cast v0, Landroid/car/hardware/CarEcuManager;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getPropIdList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->getCarEventCallback()Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/CarEcuManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 235
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public varargs registerBusiness([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 208
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$BaseCarController$dLQ2yO6ITb9MldtTovBSsSjKzeA;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$BaseCarController$dLQ2yO6ITb9MldtTovBSsSjKzeA;-><init>(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "setter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 280
    :try_start_0
    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setValue failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "BaseCarController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public varargs unregisterBusiness([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 228
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$BaseCarController$qBnR9q84_pLwZ0eQlLdf4yvMQNQ;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$BaseCarController$qBnR9q84_pLwZ0eQlLdf4yvMQNQ;-><init>(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final unregisterCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
