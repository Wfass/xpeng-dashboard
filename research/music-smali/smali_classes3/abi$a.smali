.class Labi$a;
.super Ljava/lang/Object;
.source "JodaSupport.java"

# interfaces
.implements Lwk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:J


# instance fields
.field final b:Ljava/lang/Class;

.field final c:Ljava/lang/Class;

.field final d:Ljava/lang/Class;

.field final e:Ljava/util/function/Function;

.field final g:Ljava/util/function/Function;

.field final h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "zoneId"

    .line 144
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Labi$a;->a:J

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 5

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Labi$a;->b:Ljava/lang/Class;

    .line 155
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :try_start_0
    const-string v0, "org.joda.time.chrono.GregorianChronology"

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Labi$a;->c:Ljava/lang/Class;

    const-string v0, "org.joda.time.DateTimeZone"

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Labi$a;->d:Ljava/lang/Class;

    .line 160
    iget-object p1, p0, Labi$a;->c:Ljava/lang/Class;

    const-string v0, "getInstanceUTC"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Labi$a;->h:Ljava/lang/Object;

    .line 161
    iget-object p1, p0, Labi$a;->d:Ljava/lang/Class;

    const-string v0, "forID"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v1

    .line 162
    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 161
    invoke-static {p1}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p1

    iput-object p1, p0, Labi$a;->e:Ljava/util/function/Function;

    .line 164
    iget-object p1, p0, Labi$a;->c:Ljava/lang/Class;

    const-string v0, "getInstance"

    new-array v2, v2, [Ljava/lang/Class;

    iget-object v3, p0, Labi$a;->d:Ljava/lang/Class;

    aput-object v3, v2, v1

    .line 165
    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 164
    invoke-static {p1}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p1

    iput-object p1, p0, Labi$a;->g:Ljava/util/function/Function;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 168
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "create ChronologyReader error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 186
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->m()Z

    const/4 p2, 0x0

    move-object p3, p2

    .line 187
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result p4

    if-nez p4, :cond_2

    .line 189
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide p4

    const-wide v0, 0x726965cd420d58abL    # 1.3548158803004202E243

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 192
    :cond_0
    sget-wide v0, Labi$a;->a:J

    cmp-long p3, p4, v0

    if-nez p3, :cond_1

    .line 193
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 195
    :cond_1
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not support fieldName "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    if-nez p2, :cond_4

    const-string p1, "UTC"

    .line 200
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 201
    iget-object p1, p0, Labi$a;->h:Ljava/lang/Object;

    return-object p1

    .line 204
    :cond_3
    iget-object p1, p0, Labi$a;->e:Ljava/util/function/Function;

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 205
    iget-object p2, p0, Labi$a;->g:Ljava/util/function/Function;

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 208
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string p3, "not support"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public d_()Ljava/lang/Class;
    .locals 1

    .line 174
    iget-object v0, p0, Labi$a;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 179
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string p3, "not support"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method
