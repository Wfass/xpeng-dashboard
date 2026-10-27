.class Lcom/xiaopeng/lib/bughunter/c$a;
.super Landroid/os/Handler;
.source "StackTraceCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/bughunter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/lib/bughunter/c;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/bughunter/c;Landroid/os/Looper;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/c$a;->a:Lcom/xiaopeng/lib/bughunter/c;

    .line 159
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x37

    const/16 v2, 0x36

    if-eq v0, v2, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_0

    return-void

    .line 169
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v2, :cond_1

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/lib/bughunter/c$a;->a:Lcom/xiaopeng/lib/bughunter/c;

    invoke-static {p1}, Lcom/xiaopeng/lib/bughunter/c;->a(Lcom/xiaopeng/lib/bughunter/c;)V

    .line 173
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/lib/bughunter/c$a;->a:Lcom/xiaopeng/lib/bughunter/c;

    invoke-static {p1}, Lcom/xiaopeng/lib/bughunter/c;->b(Lcom/xiaopeng/lib/bughunter/c;)[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/c$a;->a:Lcom/xiaopeng/lib/bughunter/c;

    invoke-static {v0}, Lcom/xiaopeng/lib/bughunter/c;->c(Lcom/xiaopeng/lib/bughunter/c;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/bughunter/c;->a([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/c$a;->a:Lcom/xiaopeng/lib/bughunter/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/bughunter/c;->a([Ljava/lang/StackTraceElement;)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/lib/bughunter/c$a;->a:Lcom/xiaopeng/lib/bughunter/c;

    invoke-static {p1}, Lcom/xiaopeng/lib/bughunter/c;->d(Lcom/xiaopeng/lib/bughunter/c;)V

    .line 180
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/lib/bughunter/c$a;->a:Lcom/xiaopeng/lib/bughunter/c;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/bughunter/c;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/lib/bughunter/c$a;->a:Lcom/xiaopeng/lib/bughunter/c;

    invoke-static {p1, v1}, Lcom/xiaopeng/lib/bughunter/c;->a(Lcom/xiaopeng/lib/bughunter/c;I)V

    :cond_3
    return-void
.end method
