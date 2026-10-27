.class Lcom/xiaopeng/libbluetooth/DemoActivity$2;
.super Lcom/xiaopeng/libbluetooth/c;
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
.field final synthetic Xz:Lcom/xiaopeng/libbluetooth/DemoActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libbluetooth/DemoActivity;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity$2;->Xz:Lcom/xiaopeng/libbluetooth/DemoActivity;

    invoke-direct {p0}, Lcom/xiaopeng/libbluetooth/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 47
    invoke-static {}, Lcom/xiaopeng/libbluetooth/DemoActivity;->access$000()Ljava/lang/String;

    move-result-object p8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",dataType = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",cur = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",total = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",error = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",name = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",number="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method protected onBindSuccess()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity$2;->Xz:Lcom/xiaopeng/libbluetooth/DemoActivity;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/DemoActivity;->b(Lcom/xiaopeng/libbluetooth/DemoActivity;)Lcom/xiaopeng/libbluetooth/g;

    .line 56
    return-void
.end method
