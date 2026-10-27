.class Lask$2$1;
.super Ljava/lang/Object;
.source "AudioFocusModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lask$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Laqt;

.field final synthetic c:Lask$2;


# direct methods
.method constructor <init>(Lask$2;ZLaqt;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lask$2$1;->c:Lask$2;

    iput-boolean p2, p0, Lask$2$1;->a:Z

    iput-object p3, p0, Lask$2$1;->b:Laqt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 149
    iget-boolean v0, p0, Lask$2$1;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lask$2$1;->b:Laqt;

    iget-object v1, p0, Lask$2$1;->c:Lask$2;

    iget-object v1, v1, Lask$2;->a:Lask;

    invoke-static {v1}, Lask;->d(Lask;)Lask$e;

    move-result-object v1

    invoke-virtual {v1}, Lask$e;->a()F

    move-result v1

    invoke-interface {v0, v1}, Laqt;->setVolume(F)Z

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFocusChangeListener, finalIsInCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lask$2$1;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCodriver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lask$2$1;->c:Lask$2;

    iget-object v1, v1, Lask$2;->a:Lask;

    invoke-static {v1}, Lask;->e(Lask;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isConnect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lask$2$1;->c:Lask$2;

    iget-object v1, v1, Lask$2;->a:Lask;

    invoke-static {v1}, Lask;->f(Lask;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFocusModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-boolean v0, p0, Lask$2$1;->a:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    iget-object v0, p0, Lask$2$1;->c:Lask$2;

    iget-object v0, v0, Lask$2;->a:Lask;

    invoke-static {v0}, Lask;->e(Lask;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lask$2$1;->c:Lask$2;

    iget-object v0, v0, Lask$2;->a:Lask;

    invoke-static {v0}, Lask;->f(Lask;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "mFocusChangeListener.audioPause()"

    .line 157
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lask$2$1;->c:Lask$2;

    iget-object v0, v0, Lask$2;->a:Lask;

    invoke-static {v0, v2}, Lask;->b(Lask;Z)V

    .line 161
    iget-object v0, p0, Lask$2$1;->c:Lask$2;

    iget-object v0, v0, Lask$2;->a:Lask;

    invoke-static {v0}, Lask;->g(Lask;)V

    return-void

    .line 166
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset mNeedResume while in playing state focus name:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Layg;->a()Layg;

    move-result-object v3

    invoke-virtual {v3}, Layg;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lask$2$1;->c:Lask$2;

    iget-object v0, v0, Lask$2;->a:Lask;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lask;->b(Lask;Z)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run packageName: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Layg;->a()Layg;

    move-result-object v3

    invoke-virtual {v3}, Layg;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lask$2$1;->c:Lask$2;

    iget-object v0, v0, Lask$2;->a:Lask;

    invoke-static {v0}, Lask;->h(Lask;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lask$2$1;->c:Lask$2;

    iget-object v0, v0, Lask$2;->a:Lask;

    invoke-static {v0}, Lask;->h(Lask;)I

    move-result v0

    const/4 v3, -0x2

    if-ne v0, v3, :cond_4

    .line 172
    :cond_3
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.xiaopeng.btphone"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "requestAudioFocus: ======="

    .line 176
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lask$2$1;->c:Lask$2;

    iget-object v0, v0, Lask$2;->a:Lask;

    invoke-virtual {v0}, Lask;->b()V

    .line 180
    :cond_4
    iget-object v0, p0, Lask$2$1;->c:Lask$2;

    iget-object v0, v0, Lask$2;->a:Lask;

    invoke-static {v0}, Lask;->i(Lask;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 181
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->c()V

    .line 184
    :cond_5
    iget-object v0, p0, Lask$2$1;->c:Lask$2;

    iget-object v0, v0, Lask$2;->a:Lask;

    invoke-static {v0, v2}, Lask;->c(Lask;Z)Z

    .line 187
    iget-object v0, p0, Lask$2$1;->c:Lask$2;

    iget-object v0, v0, Lask$2;->a:Lask;

    invoke-static {v0}, Lask;->d(Lask;)Lask$e;

    move-result-object v0

    invoke-virtual {v0}, Lask$e;->b()Z

    move-result v0

    if-nez v0, :cond_6

    .line 188
    iget-object v0, p0, Lask$2$1;->b:Laqt;

    iget-object v1, p0, Lask$2$1;->c:Lask$2;

    iget-object v1, v1, Lask$2;->a:Lask;

    invoke-static {v1}, Lask;->d(Lask;)Lask$e;

    move-result-object v1

    invoke-static {v1}, Lask$e;->a(Lask$e;)F

    move-result v1

    invoke-interface {v0, v1}, Laqt;->setVolume(F)Z

    :cond_6
    return-void
.end method
