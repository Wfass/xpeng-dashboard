.class Lcom/xiaopeng/commonfunc/model/test/WifiTest$EventCallback;
.super Ljava/lang/Object;
.source "WifiTest.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/model/test/WifiTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/test/WifiTest;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/test/WifiTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/test/WifiTest;

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest$EventCallback;->this$0:Lcom/xiaopeng/commonfunc/model/test/WifiTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest$EventCallback;->this$0:Lcom/xiaopeng/commonfunc/model/test/WifiTest;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->access$000(Lcom/xiaopeng/commonfunc/model/test/WifiTest;)Lcom/xiaopeng/commonfunc/model/test/WifiTest$WiFiEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/commonfunc/model/test/WifiTest$WiFiEventListener;->onFailure(I)V

    .line 37
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest$EventCallback;->this$0:Lcom/xiaopeng/commonfunc/model/test/WifiTest;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->access$000(Lcom/xiaopeng/commonfunc/model/test/WifiTest;)Lcom/xiaopeng/commonfunc/model/test/WifiTest$WiFiEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/commonfunc/model/test/WifiTest$WiFiEventListener;->onSuccess()V

    .line 32
    return-void
.end method
