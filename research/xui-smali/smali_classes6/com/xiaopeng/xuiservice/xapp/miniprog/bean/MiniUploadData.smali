.class public Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniUploadData;
.super Ljava/lang/Object;
.source "MiniUploadData.java"


# instance fields
.field device_data:Ljava/lang/String;

.field user_key:Ljava/lang/String;

.field user_route:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "userRoute"    # Ljava/lang/String;
    .param p3, "deviceData"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniUploadData;->user_key:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniUploadData;->user_route:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniUploadData;->device_data:Ljava/lang/String;

    .line 16
    return-void
.end method
