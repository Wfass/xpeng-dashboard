.class public Lcom/xiaopeng/aicabin/event/EventValue;
.super Lcom/xiaopeng/aicabin/RawValue;
.source "EventValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/aicabin/event/EventValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVENT:Ljava/lang/String; = "event"

.field private static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaopeng/aicabin/event/EventValue$a;

    invoke-direct {v0}, Lcom/xiaopeng/aicabin/event/EventValue$a;-><init>()V

    sput-object v0, Lcom/xiaopeng/aicabin/event/EventValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;J)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/xiaopeng/aicabin/RawValue;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "event"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/aicabin/RawValue;->putVal(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/RawValue;

    const-string p1, "value"

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/aicabin/RawValue;->putVal(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/RawValue;

    .line 5
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "timestamp"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/aicabin/RawValue;->putVal(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/RawValue;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaopeng/aicabin/RawValue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static newBuilder(ILjava/lang/Object;)Lcom/xiaopeng/aicabin/event/EventValue;
    .locals 3

    .line 2
    new-instance v0, Lcom/xiaopeng/aicabin/event/EventValue;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/xiaopeng/aicabin/event/EventValue;-><init>(ILjava/lang/Object;J)V

    return-object v0
.end method

.method public static newBuilder(ILjava/lang/Object;J)Lcom/xiaopeng/aicabin/event/EventValue;
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaopeng/aicabin/event/EventValue;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/aicabin/event/EventValue;-><init>(ILjava/lang/Object;J)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/xiaopeng/aicabin/RawValue;->describeContents()I

    move-result v0

    return v0
.end method

.method public getEvent()I
    .locals 1

    const-string v0, "event"

    .line 1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/aicabin/RawValue;->getVal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    const-string v0, "timestamp"

    .line 1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/aicabin/RawValue;->getVal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVal()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    const-string v0, "value"

    .line 1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/aicabin/RawValue;->getVal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "value"

    .line 1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/aicabin/RawValue;->getVal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/aicabin/RawValue;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
