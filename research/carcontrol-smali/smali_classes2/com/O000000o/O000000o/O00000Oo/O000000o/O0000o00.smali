.class public final Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o00;
.super Lcom/O000000o/O000000o/O000o000;
.source "SqlDateTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/O000000o/O000000o/O000o000<",
        "Ljava/sql/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final O000000o:Lcom/O000000o/O000000o/O000o00;


# instance fields
.field private final O00000Oo:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o00$1;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o00$1;-><init>()V

    sput-object v0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o00;->O000000o:Lcom/O000000o/O000000o/O000o00;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/O000000o/O000000o/O000o000;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o00;->O00000Oo:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public declared-synchronized O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/sql/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v0

    sget-object v1, Lcom/O000000o/O000000o/O00000o/O00000o0;->O0000Oo0:Lcom/O000000o/O000000o/O00000o/O00000o0;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000Oo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o00;->O00000Oo:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000OOo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    new-instance p1, Ljava/sql/Date;

    invoke-direct {p1, v0, v1}, Ljava/sql/Date;-><init>(J)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Lcom/O000000o/O000000o/O000OOo;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O000OOo;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/sql/Date;

    invoke-virtual {p0, p1, p2}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o00;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/sql/Date;)V

    return-void
.end method

.method public declared-synchronized O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/sql/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o00;->O00000Oo:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000Oo(Ljava/lang/String;)Lcom/O000000o/O000000o/O00000o/O00000o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o00;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method
