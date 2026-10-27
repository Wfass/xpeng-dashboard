.class Lcom/alibaba/fastjson2/util/JdbcSupport$ClobWriter;
.super Ljava/lang/Object;
.source "JdbcSupport.java"

# interfaces
.implements Lcom/alibaba/fastjson2/writer/ObjectWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/util/JdbcSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClobWriter"
.end annotation


# instance fields
.field final function:Ljava/util/function/Function;

.field final objectClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    sget-object v0, Lcom/alibaba/fastjson2/util/JdbcSupport;->CLASS_CLOB:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alibaba/fastjson2/util/JdbcSupport;->CLASS_CLOB_ERROR:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "java.sql.Clob"

    .line 153
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/JdbcSupport;->CLASS_CLOB:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x1

    .line 155
    sput-boolean v0, Lcom/alibaba/fastjson2/util/JdbcSupport;->CLASS_CLOB_ERROR:Z

    .line 159
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JdbcSupport;->CLASS_CLOB:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 163
    iput-object p1, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$ClobWriter;->objectClass:Ljava/lang/Class;

    .line 165
    :try_start_1
    sget-object p1, Lcom/alibaba/fastjson2/util/JdbcSupport;->CLASS_CLOB:Ljava/lang/Class;

    const-string v0, "getCharacterStream"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 166
    invoke-static {p1}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$ClobWriter;->function:Ljava/util/function/Function;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 168
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "getMethod getCharacterStream error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 160
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "class java.sql.Clob not found"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 174
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$ClobWriter;->function:Ljava/util/function/Function;

    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/Reader;

    .line 175
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/io/Reader;)V

    return-void
.end method
