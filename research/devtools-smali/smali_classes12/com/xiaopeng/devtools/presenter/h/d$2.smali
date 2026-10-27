.class Lcom/xiaopeng/devtools/presenter/h/d$2;
.super Ljava/lang/Object;
.source "ScreenFirUpdatePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/h/d;->ku()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zV:Lcom/xiaopeng/devtools/presenter/h/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/h/d;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/d$2;->zV:Lcom/xiaopeng/devtools/presenter/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 135
    nop

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/d$2;->zV:Lcom/xiaopeng/devtools/presenter/h/d;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/h/d;->a(Lcom/xiaopeng/devtools/presenter/h/d;)Lcom/xiaopeng/devtools/view/update/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/update/c;->dB(I)V

    .line 138
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const-string v2, "1"

    invoke-static {}, Lcom/xiaopeng/devtools/presenter/h/d;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/devtools/utils/g;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x28

    if-eqz v2, :cond_1

    .line 143
    if-le v1, v3, :cond_0

    .line 144
    goto :goto_3

    .line 146
    :cond_0
    const-wide/16 v2, 0x5dc

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    goto :goto_2

    .line 147
    :catch_1
    move-exception v2

    .line 148
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 153
    :cond_1
    :goto_3
    if-le v1, v3, :cond_2

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/d$2;->zV:Lcom/xiaopeng/devtools/presenter/h/d;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/h/d;->a(Lcom/xiaopeng/devtools/presenter/h/d;)Lcom/xiaopeng/devtools/view/update/c;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/update/c;->dB(I)V

    goto :goto_4

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/h/d$2;->zV:Lcom/xiaopeng/devtools/presenter/h/d;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/h/d;->a(Lcom/xiaopeng/devtools/presenter/h/d;)Lcom/xiaopeng/devtools/view/update/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaopeng/devtools/view/update/c;->dB(I)V

    .line 158
    :goto_4
    return-void
.end method
