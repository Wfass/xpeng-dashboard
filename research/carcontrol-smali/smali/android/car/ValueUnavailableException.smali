.class public Landroid/car/ValueUnavailableException;
.super Ljava/lang/IllegalArgumentException;
.source "ValueUnavailableException.java"


# static fields
.field public static final HAL_DIED:I = 0x2

.field public static final INVALID_SHOW:I = 0x4

.field public static final NOT_SUPPORTED:I = 0x3

.field public static final NO_DATA:I = 0x0

.field public static final SIGNAL_LOST:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Landroid/car/ValueUnavailableException;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get the value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/car/ValueUnavailableException;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static getDescription(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown"

    goto :goto_0

    :cond_0
    const-string p0, "due to receive invalid value"

    goto :goto_0

    :cond_1
    const-string p0, "due to the property is unsupported"

    goto :goto_0

    :cond_2
    const-string p0, "due to the the vehicle hal is dead"

    goto :goto_0

    :cond_3
    const-string p0, "due to the signal lost"

    goto :goto_0

    :cond_4
    const-string p0, "due to the ECU not sending related data"

    :goto_0
    return-object p0
.end method
