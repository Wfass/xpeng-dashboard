.class public Lcom/xiaopeng/commonfunc/bean/car/CarBase;
.super Ljava/lang/Object;
.source "CarBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BLE_REPLACE_REQ:Ljava/lang/String; = "ble_replace_req"

.field public static final BLE_REPLACE_RESP:Ljava/lang/String; = "ble_replace_resp"


# instance fields
.field private mContent:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "mId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 15
    .local p0, "this":Lcom/xiaopeng/commonfunc/bean/car/CarBase;, "Lcom/xiaopeng/commonfunc/bean/car/CarBase<TT;>;"
    .local p2, "mContent":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/car/CarBase;->mId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/car/CarBase;->mContent:Ljava/lang/Object;

    .line 18
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 29
    .local p0, "this":Lcom/xiaopeng/commonfunc/bean/car/CarBase;, "Lcom/xiaopeng/commonfunc/bean/car/CarBase<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/CarBase;->mContent:Ljava/lang/Object;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 21
    .local p0, "this":Lcom/xiaopeng/commonfunc/bean/car/CarBase;, "Lcom/xiaopeng/commonfunc/bean/car/CarBase<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/CarBase;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/xiaopeng/commonfunc/bean/car/CarBase;, "Lcom/xiaopeng/commonfunc/bean/car/CarBase<TT;>;"
    .local p1, "mContent":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/car/CarBase;->mContent:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mId"    # Ljava/lang/String;

    .line 25
    .local p0, "this":Lcom/xiaopeng/commonfunc/bean/car/CarBase;, "Lcom/xiaopeng/commonfunc/bean/car/CarBase<TT;>;"
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/car/CarBase;->mId:Ljava/lang/String;

    .line 26
    return-void
.end method
