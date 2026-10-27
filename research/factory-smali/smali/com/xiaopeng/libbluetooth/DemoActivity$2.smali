.class Lcom/xiaopeng/libbluetooth/DemoActivity$2;
.super Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;
.source "DemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libbluetooth/DemoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/libbluetooth/DemoActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libbluetooth/DemoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/libbluetooth/DemoActivity;

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity$2;->this$0:Lcom/xiaopeng/libbluetooth/DemoActivity;

    invoke-direct {p0}, Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBindSuccess()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity$2;->this$0:Lcom/xiaopeng/libbluetooth/DemoActivity;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/DemoActivity;->access$200(Lcom/xiaopeng/libbluetooth/DemoActivity;)Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    .line 56
    return-void
.end method

.method protected onPhoneBook(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "dataType"    # I
    .param p3, "cur"    # I
    .param p4, "total"    # I
    .param p5, "error"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "number"    # Ljava/lang/String;
    .param p8, "time"    # Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/xiaopeng/libbluetooth/DemoActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dataType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",cur = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method
