.class public Lcom/alibaba/mtl/appmonitor/c;
.super Lcom/alibaba/mtl/appmonitor/b$a;
.source "Monitor.java"


# instance fields
.field private ax:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/mtl/appmonitor/b$a;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/c;->ax:Landroid/app/Application;

    .line 22
    return-void
.end method

.method private r(I)Lcom/alibaba/mtl/appmonitor/a/f;
    .locals 0

    .line 246
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a/f;->r(I)Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/appmonitor/c;->r(I)Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object p1

    .line 54
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/a;->a(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    .line 56
    return-void
.end method

.method public a(Lcom/alibaba/mtl/appmonitor/Transaction;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/e;->c(Lcom/alibaba/mtl/appmonitor/Transaction;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public b(Lcom/alibaba/mtl/appmonitor/Transaction;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/e;->d(Lcom/alibaba/mtl/appmonitor/Transaction;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/a$c;->a(Ljava/lang/String;Ljava/lang/String;D)V

    .line 167
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/a$b;->a(Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V

    .line 100
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;DLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    invoke-static/range {p1 .. p6}, Lcom/alibaba/mtl/appmonitor/a$d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;DLjava/util/Map;)V

    .line 237
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    const-string v0, "Monitor"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[stat_commit3]"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/a$d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/util/Map;)V

    .line 243
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 179
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 191
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    .line 185
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-static/range {p1 .. p6}, Lcom/alibaba/mtl/appmonitor/a$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V

    .line 106
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    invoke-static/range {p1 .. p6}, Lcom/alibaba/mtl/appmonitor/a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 145
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 140
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 129
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/a$d;->a(Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V

    .line 231
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 197
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/a$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 134
    return-void
.end method

.method public destroy()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->destroy()V

    .line 32
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/a$d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/a$d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public f(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a;->f(Z)V

    .line 49
    return-void
.end method

.method public h(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a;->h(I)V

    .line 43
    return-void
.end method

.method public i(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a;->f(I)V

    .line 173
    return-void
.end method

.method public init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/c;->ax:Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/a;->a(Landroid/app/Application;)V

    .line 27
    return-void
.end method

.method public j(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a$b;->f(I)V

    .line 84
    return-void
.end method

.method public k(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a$b;->h(I)V

    .line 90
    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/a$b;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public l(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a$c;->f(I)V

    .line 151
    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/a$c;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public m(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a$c;->h(I)V

    .line 157
    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/a$a;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public n(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a$a;->f(I)V

    .line 112
    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/a$d;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public o(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a$a;->h(I)V

    .line 117
    return-void
.end method

.method public p()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->p()V

    .line 37
    return-void
.end method

.method public p(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a$d;->f(I)V

    .line 215
    return-void
.end method

.method public q(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a$d;->h(I)V

    .line 221
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a;->setChannel(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public turnOffRealTimeDebug()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->turnOffRealTimeDebug()V

    .line 78
    return-void
.end method

.method public turnOnRealTimeDebug(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a;->turnOnRealTimeDebug(Ljava/util/Map;)V

    .line 73
    return-void
.end method
