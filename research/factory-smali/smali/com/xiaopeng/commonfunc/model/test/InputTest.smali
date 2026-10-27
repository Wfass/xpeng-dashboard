.class public Lcom/xiaopeng/commonfunc/model/test/InputTest;
.super Ljava/lang/Object;
.source "InputTest.java"


# instance fields
.field private mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field public mIds:[I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/InputTest;->mDeviceList:Ljava/util/ArrayList;

    .line 16
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/InputTest;->mIds:[I

    .line 17
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/InputTest;->mIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 18
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/InputTest;->mIds:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 19
    .local v1, "device":Landroid/view/InputDevice;
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/InputTest;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .end local v1    # "device":Landroid/view/InputDevice;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getInputDeviceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/InputTest;->mDeviceList:Ljava/util/ArrayList;

    return-object v0
.end method
