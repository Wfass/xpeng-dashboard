.class public Lcom/xiaopeng/commonfunc/bean/storage/StorageList;
.super Ljava/lang/Object;
.source "StorageList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;
    }
.end annotation


# instance fields
.field private bigfilelist:[Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bigfilelist"
    .end annotation
.end field

.field private cachelist:[Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cachelist"
    .end annotation
.end field

.field private loglist:[Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "loglist"
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;[Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;[Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;)V
    .locals 0
    .param p1, "loglist"    # [Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;
    .param p2, "cachelist"    # [Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;
    .param p3, "bigfilelist"    # [Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/storage/StorageList;->loglist:[Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;

    .line 16
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/storage/StorageList;->cachelist:[Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;

    .line 17
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/storage/StorageList;->bigfilelist:[Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;

    .line 18
    return-void
.end method


# virtual methods
.method public getBigfilelist()[Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/storage/StorageList;->bigfilelist:[Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;

    return-object v0
.end method

.method public getCachelist()[Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/storage/StorageList;->cachelist:[Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;

    return-object v0
.end method

.method public getLoglist()[Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/storage/StorageList;->loglist:[Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;

    return-object v0
.end method
