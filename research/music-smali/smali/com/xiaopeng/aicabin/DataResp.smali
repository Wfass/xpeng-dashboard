.class public final Lcom/xiaopeng/aicabin/DataResp;
.super Lcom/xiaopeng/aicabin/RawValue;
.source "DataResp.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/aicabin/DataResp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCode:I

.field private mIsSuccess:Z

.field private mMessage:Ljava/lang/String;

.field private mOtherMsg:Ljava/lang/String;

.field private mTaskTd:Ljava/lang/String;

.field private final mTracker:Lcom/xiaopeng/aicabin/Tracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaopeng/aicabin/DataResp$a;

    invoke-direct {v0}, Lcom/xiaopeng/aicabin/DataResp$a;-><init>()V

    sput-object v0, Lcom/xiaopeng/aicabin/DataResp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Lcom/xiaopeng/aicabin/RawValue;-><init>(Landroid/os/Parcel;)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aicabin/DataResp;->mTaskTd:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/aicabin/DataResp;->mIsSuccess:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/aicabin/DataResp;->mCode:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aicabin/DataResp;->mMessage:Ljava/lang/String;

    .line 18
    const-class v0, Lcom/xiaopeng/aicabin/Tracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/aicabin/Tracker;

    iput-object p1, p0, Lcom/xiaopeng/aicabin/DataResp;->mTracker:Lcom/xiaopeng/aicabin/Tracker;

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaopeng/aicabin/RawValue;-><init>()V

    .line 2
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/DataUtil;->identityBuild()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aicabin/DataResp;->mTaskTd:Ljava/lang/String;

    .line 3
    iput-boolean p1, p0, Lcom/xiaopeng/aicabin/DataResp;->mIsSuccess:Z

    .line 4
    iput p2, p0, Lcom/xiaopeng/aicabin/DataResp;->mCode:I

    .line 5
    iput-object p3, p0, Lcom/xiaopeng/aicabin/DataResp;->mMessage:Ljava/lang/String;

    .line 6
    new-instance p1, Lcom/xiaopeng/aicabin/Tracker;

    invoke-direct {p1}, Lcom/xiaopeng/aicabin/Tracker;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/aicabin/DataResp;->mTracker:Lcom/xiaopeng/aicabin/Tracker;

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-direct {p0, p4}, Lcom/xiaopeng/aicabin/RawValue;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/DataUtil;->identityBuild()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/xiaopeng/aicabin/DataResp;->mTaskTd:Ljava/lang/String;

    .line 9
    iput-boolean p1, p0, Lcom/xiaopeng/aicabin/DataResp;->mIsSuccess:Z

    .line 10
    iput p2, p0, Lcom/xiaopeng/aicabin/DataResp;->mCode:I

    .line 11
    iput-object p3, p0, Lcom/xiaopeng/aicabin/DataResp;->mMessage:Ljava/lang/String;

    .line 12
    new-instance p1, Lcom/xiaopeng/aicabin/Tracker;

    invoke-direct {p1}, Lcom/xiaopeng/aicabin/Tracker;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/aicabin/DataResp;->mTracker:Lcom/xiaopeng/aicabin/Tracker;

    return-void
.end method

.method public static newBuilder(Lcom/xiaopeng/aicabin/ICode;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 3

    .line 2
    new-instance v0, Lcom/xiaopeng/aicabin/DataResp;

    invoke-interface {p0}, Lcom/xiaopeng/aicabin/ICode;->getCode()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Lcom/xiaopeng/aicabin/ICode;->getCode()I

    move-result v2

    invoke-interface {p0}, Lcom/xiaopeng/aicabin/ICode;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/xiaopeng/aicabin/DataResp;-><init>(ZILjava/lang/String;)V

    return-object v0
.end method

.method public static newBuilder(ZILjava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaopeng/aicabin/DataResp;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/aicabin/DataResp;-><init>(ZILjava/lang/String;)V

    return-object v0
.end method

.method public static newBuilder(ZILjava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    .line 3
    new-instance v0, Lcom/xiaopeng/aicabin/DataResp;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/aicabin/DataResp;-><init>(ZILjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaopeng/aicabin/DataResp;->mCode:I

    return v0
.end method

.method public getDefJsonFromCls(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/aicabin/DataResp;->getDefVal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0, p1}, Lcom/xiaopeng/aicabin/utils/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDefJsonFromType(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/aicabin/DataResp;->getDefVal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0, p1}, Lcom/xiaopeng/aicabin/utils/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

.method public getJsonFromCls(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/aicabin/DataResp;->getVal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Lcom/xiaopeng/aicabin/utils/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getJsonFromType(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/aicabin/DataResp;->getVal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Lcom/xiaopeng/aicabin/utils/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/DataResp;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/DataResp;->mOtherMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskTd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/DataResp;->mTaskTd:Ljava/lang/String;

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

.method public isSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaopeng/aicabin/DataResp;->mIsSuccess:Z

    return v0
.end method

.method public putDefVal(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/xiaopeng/aicabin/RawValue;->putDefVal(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/RawValue;

    return-object p0
.end method

.method public bridge synthetic putDefVal(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/RawValue;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/aicabin/DataResp;->putDefVal(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method public putVal(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/aicabin/RawValue;->putVal(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/RawValue;

    return-object p0
.end method

.method public bridge synthetic putVal(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/RawValue;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/aicabin/DataResp;->putVal(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method public setCode(I)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaopeng/aicabin/DataResp;->mCode:I

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/DataResp;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setOtherMsg(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/DataResp;->mOtherMsg:Ljava/lang/String;

    return-object p0
.end method

.method public setSuccess(Z)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaopeng/aicabin/DataResp;->mIsSuccess:Z

    return-object p0
.end method

.method public setTaskTd(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/DataResp;->mTaskTd:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataResp{mTaskTd=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/DataResp;->mTaskTd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mIsSuccess="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/aicabin/DataResp;->mIsSuccess:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/aicabin/DataResp;->mCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMessage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/aicabin/DataResp;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mOtherMsg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/aicabin/DataResp;->mOtherMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mRawValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-super {p0}, Lcom/xiaopeng/aicabin/RawValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/aicabin/RawValue;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object v0, p0, Lcom/xiaopeng/aicabin/DataResp;->mTaskTd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcom/xiaopeng/aicabin/DataResp;->mIsSuccess:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    iget v0, p0, Lcom/xiaopeng/aicabin/DataResp;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object v0, p0, Lcom/xiaopeng/aicabin/DataResp;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/xiaopeng/aicabin/DataResp;->mTracker:Lcom/xiaopeng/aicabin/Tracker;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
