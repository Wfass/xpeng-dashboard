.class public Lcom/xiaopeng/commonfunc/bean/smartdrive/SmartDriveData;
.super Ljava/lang/Object;
.source "SmartDriveData.java"


# instance fields
.field private btName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "btName"
    .end annotation
.end field

.field private cduScuTest:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CDU_SCU_Test"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBtName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/smartdrive/SmartDriveData;->btName:Ljava/lang/String;

    return-object v0
.end method

.method public getCduScuTest()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/smartdrive/SmartDriveData;->cduScuTest:I

    return v0
.end method

.method public setBtName(Ljava/lang/String;)V
    .locals 0
    .param p1, "btName"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/smartdrive/SmartDriveData;->btName:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setCduScuTest(I)V
    .locals 0
    .param p1, "cduScuTest"    # I

    .line 28
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/smartdrive/SmartDriveData;->cduScuTest:I

    .line 29
    return-void
.end method
