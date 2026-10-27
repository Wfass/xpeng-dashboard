.class final Laoc$1;
.super Ljava/lang/Object;
.source "_DataLogHostHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;I)V
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

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:I


# direct methods
.method constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 129
    iput-object p1, p0, Laoc$1;->a:Ljava/util/HashMap;

    iput-object p2, p0, Laoc$1;->b:Ljava/util/HashMap;

    iput-object p3, p0, Laoc$1;->c:Ljava/lang/String;

    iput-object p4, p0, Laoc$1;->d:Ljava/lang/String;

    iput-object p5, p0, Laoc$1;->e:Ljava/lang/String;

    iput-object p6, p0, Laoc$1;->f:Ljava/lang/String;

    iput-object p7, p0, Laoc$1;->g:Ljava/lang/String;

    iput p8, p0, Laoc$1;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 132
    const-class v0, Lany;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 133
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v0

    .line 134
    invoke-static {}, Lanx;->b()Lanx$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v2, p0, Laoc$1;->a:Ljava/util/HashMap;

    invoke-interface {v1, v2}, Lanx$a;->a(Ljava/util/HashMap;)V

    .line 137
    iget-object v2, p0, Laoc$1;->b:Ljava/util/HashMap;

    invoke-interface {v1, v2}, Lanx$a;->b(Ljava/util/HashMap;)V

    .line 139
    :cond_0
    iget-object v1, p0, Laoc$1;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setModule(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    .line 140
    iget-object v1, p0, Laoc$1;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    iget-object v1, p0, Laoc$1;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setEvent(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    .line 143
    :cond_1
    iget-object v1, p0, Laoc$1;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    .line 144
    iget-object v1, p0, Laoc$1;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    .line 145
    iget-object v1, p0, Laoc$1;->a:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Laoc;->a(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    iget-object v1, p0, Laoc$1;->b:Ljava/util/HashMap;

    invoke-static {v0, v2, v1}, Laoc;->a(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    iget-object v1, p0, Laoc$1;->g:Ljava/lang/String;

    iget v2, p0, Laoc$1;->h:I

    invoke-static {v1, v0, v2}, Laoc;->a(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;I)V

    return-void
.end method
