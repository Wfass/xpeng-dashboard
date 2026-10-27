.class public Lcom/xiaopeng/lludancemanager/bean/LluAiUserManualBean;
.super Ljava/lang/Object;
.source "LluAiUserManualBean.java"


# instance fields
.field private mIndex:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiUserManualBean;->mIndex:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiUserManualBean;->mText:Ljava/lang/String;

    return-object v0
.end method
