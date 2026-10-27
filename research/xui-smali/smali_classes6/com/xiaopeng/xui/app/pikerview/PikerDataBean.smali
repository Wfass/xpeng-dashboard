.class public Lcom/xiaopeng/xui/app/pikerview/PikerDataBean;
.super Ljava/lang/Object;
.source "PikerDataBean.java"


# instance fields
.field public item1:Ljava/lang/String;

.field public item2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "i1"    # Ljava/lang/String;
    .param p2, "i2"    # Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/xiaopeng/xui/app/pikerview/PikerDataBean;->item1:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/xiaopeng/xui/app/pikerview/PikerDataBean;->item2:Ljava/lang/String;

    .line 10
    return-void
.end method
