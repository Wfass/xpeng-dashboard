.class public Lcom/xiaopeng/aicabin/DataReq;
.super Lcom/xiaopeng/aicabin/RawValue;
.source "DataReq.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/aicabin/DataReq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTaskTd:Ljava/lang/String;

.field private final mTracker:Lcom/xiaopeng/aicabin/Tracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaopeng/aicabin/DataReq$a;

    invoke-direct {v0}, Lcom/xiaopeng/aicabin/DataReq$a;-><init>()V

    sput-object v0, Lcom/xiaopeng/aicabin/DataReq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaopeng/aicabin/RawValue;-><init>()V

    .line 2
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/DataUtil;->identityBuild()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aicabin/DataReq;->mTaskTd:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/xiaopeng/aicabin/Tracker;

    invoke-direct {v0}, Lcom/xiaopeng/aicabin/Tracker;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/DataReq;->mTracker:Lcom/xiaopeng/aicabin/Tracker;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Lcom/xiaopeng/aicabin/RawValue;-><init>(Landroid/os/Parcel;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aicabin/DataReq;->mTaskTd:Ljava/lang/String;

    .line 9
    const-class v0, Lcom/xiaopeng/aicabin/Tracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/aicabin/Tracker;

    iput-object p1, p0, Lcom/xiaopeng/aicabin/DataReq;->mTracker:Lcom/xiaopeng/aicabin/Tracker;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/xiaopeng/aicabin/RawValue;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/DataUtil;->identityBuild()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/aicabin/DataReq;->mTaskTd:Ljava/lang/String;

    .line 6
    new-instance p1, Lcom/xiaopeng/aicabin/Tracker;

    invoke-direct {p1}, Lcom/xiaopeng/aicabin/Tracker;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/aicabin/DataReq;->mTracker:Lcom/xiaopeng/aicabin/Tracker;

    return-void
.end method

.method public static newBuilder()Lcom/xiaopeng/aicabin/DataReq;
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaopeng/aicabin/DataReq;

    invoke-direct {v0}, Lcom/xiaopeng/aicabin/DataReq;-><init>()V

    return-object v0
.end method

.method public static newBuilder(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataReq;
    .locals 1

    .line 2
    new-instance v0, Lcom/xiaopeng/aicabin/DataReq;

    invoke-direct {v0, p0}, Lcom/xiaopeng/aicabin/DataReq;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefVal()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/xiaopeng/aicabin/RawValue;->getDefVal()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDefVal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/xiaopeng/aicabin/RawValue;->getDefVal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTaskTd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/DataReq;->mTaskTd:Ljava/lang/String;

    return-object v0
.end method

.method public getTracker()Lcom/xiaopeng/aicabin/Tracker;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/DataReq;->mTracker:Lcom/xiaopeng/aicabin/Tracker;

    return-object v0
.end method

.method public getVal(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/xiaopeng/aicabin/RawValue;->getVal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getVal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/aicabin/RawValue;->getVal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putDefVal(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataReq;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/xiaopeng/aicabin/RawValue;->putDefVal(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/RawValue;

    return-object p0
.end method

.method public bridge synthetic putDefVal(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/RawValue;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/aicabin/DataReq;->putDefVal(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataReq;

    move-result-object p1

    return-object p1
.end method

.method public putVal(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataReq;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/aicabin/RawValue;->putVal(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/RawValue;

    return-object p0
.end method

.method public bridge synthetic putVal(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/RawValue;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/aicabin/DataReq;->putVal(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataReq;

    move-result-object p1

    return-object p1
.end method

.method public setTaskTd(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataReq;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/DataReq;->mTaskTd:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/aicabin/RawValue;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object v0, p0, Lcom/xiaopeng/aicabin/DataReq;->mTaskTd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/xiaopeng/aicabin/DataReq;->mTracker:Lcom/xiaopeng/aicabin/Tracker;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
