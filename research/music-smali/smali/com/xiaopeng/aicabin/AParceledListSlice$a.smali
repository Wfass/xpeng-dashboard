.class public Lcom/xiaopeng/aicabin/AParceledListSlice$a;
.super Landroid/os/Binder;
.source "AParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/aicabin/AParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Class;

.field public final synthetic c:I

.field public final synthetic d:Lcom/xiaopeng/aicabin/AParceledListSlice;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/aicabin/AParceledListSlice;ILjava/lang/Class;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/AParceledListSlice$a;->d:Lcom/xiaopeng/aicabin/AParceledListSlice;

    iput p2, p0, Lcom/xiaopeng/aicabin/AParceledListSlice$a;->a:I

    iput-object p3, p0, Lcom/xiaopeng/aicabin/AParceledListSlice$a;->b:Ljava/lang/Class;

    iput p4, p0, Lcom/xiaopeng/aicabin/AParceledListSlice$a;->c:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5
    :goto_0
    iget p2, p0, Lcom/xiaopeng/aicabin/AParceledListSlice$a;->a:I

    if-ge p1, p2, :cond_1

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result p2

    invoke-static {}, Lcom/xiaopeng/aicabin/AParceledListSlice;->access$000()I

    move-result p4

    if-ge p2, p4, :cond_1

    .line 6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object p2, p0, Lcom/xiaopeng/aicabin/AParceledListSlice$a;->d:Lcom/xiaopeng/aicabin/AParceledListSlice;

    invoke-static {p2}, Lcom/xiaopeng/aicabin/AParceledListSlice;->access$100(Lcom/xiaopeng/aicabin/AParceledListSlice;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    .line 9
    iget-object p4, p0, Lcom/xiaopeng/aicabin/AParceledListSlice$a;->b:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/xiaopeng/aicabin/AParceledListSlice;->access$200(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 10
    iget-object p4, p0, Lcom/xiaopeng/aicabin/AParceledListSlice$a;->d:Lcom/xiaopeng/aicabin/AParceledListSlice;

    iget v1, p0, Lcom/xiaopeng/aicabin/AParceledListSlice$a;->c:I

    invoke-virtual {p4, p2, p3, v1}, Lcom/xiaopeng/aicabin/AParceledListSlice;->writeElement(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 15
    :cond_1
    iget p2, p0, Lcom/xiaopeng/aicabin/AParceledListSlice$a;->a:I

    if-ge p1, p2, :cond_2

    const/4 p1, 0x0

    .line 17
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2
    return v0
.end method
