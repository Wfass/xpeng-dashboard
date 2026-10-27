.class final Laoc$2;
.super Ljava/lang/Object;
.source "_DataLogHostHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I


# direct methods
.method constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 153
    iput-object p1, p0, Laoc$2;->a:Ljava/util/HashMap;

    iput-object p2, p0, Laoc$2;->b:Ljava/util/HashMap;

    iput-object p3, p0, Laoc$2;->c:Ljava/lang/String;

    iput-object p4, p0, Laoc$2;->d:Ljava/lang/String;

    iput-object p5, p0, Laoc$2;->e:Ljava/lang/String;

    iput p6, p0, Laoc$2;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 156
    const-class v0, Lany;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 157
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v0

    .line 158
    invoke-static {}, Lanx;->b()Lanx$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v2, p0, Laoc$2;->a:Ljava/util/HashMap;

    invoke-interface {v1, v2}, Lanx$a;->a(Ljava/util/HashMap;)V

    .line 161
    iget-object v2, p0, Laoc$2;->b:Ljava/util/HashMap;

    invoke-interface {v1, v2}, Lanx$a;->b(Ljava/util/HashMap;)V

    .line 163
    :cond_0
    invoke-static {}, Laoc;->a()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Laoc$2;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "para"

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    const/4 v1, 0x0

    .line 164
    iget-object v2, p0, Laoc$2;->b:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Laoc;->a(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    iget-object v1, p0, Laoc$2;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Laoc$2;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 166
    iget-object v1, p0, Laoc$2;->d:Ljava/lang/String;

    iget-object v2, p0, Laoc$2;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Laoc$2;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Laoc$2;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    goto :goto_0

    .line 169
    :cond_1
    iget-object v1, p0, Laoc$2;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    goto :goto_0

    .line 172
    :cond_2
    iget-object v1, p0, Laoc$2;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    .line 174
    :goto_0
    iget-object v1, p0, Laoc$2;->e:Ljava/lang/String;

    iget v2, p0, Laoc$2;->f:I

    invoke-static {v1, v0, v2}, Laoc;->a(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;I)V

    return-void
.end method
