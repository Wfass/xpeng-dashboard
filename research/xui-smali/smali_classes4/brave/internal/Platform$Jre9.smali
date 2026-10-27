.class Lbrave/internal/Platform$Jre9;
.super Lbrave/internal/Platform$Jre7;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Jre9"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lbrave/internal/Platform$Jre7;-><init>()V

    return-void
.end method

.method static buildIfSupported()Lbrave/internal/Platform$Jre9;
    .locals 5

    .line 130
    :try_start_0
    const-string v0, "java.time.ZoneId"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 131
    .local v0, "zoneId":Ljava/lang/Class;
    const-string v1, "java.time.Clock"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "tickMillis"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 132
    new-instance v1, Lbrave/internal/Platform$Jre9;

    invoke-direct {v1}, Lbrave/internal/Platform$Jre9;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 135
    .end local v0    # "zoneId":Ljava/lang/Class;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 133
    :catch_1
    move-exception v0

    .line 137
    nop

    .line 138
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public clock()Lbrave/Clock;
    .locals 1
    .annotation build Lorg/jvnet/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .line 142
    new-instance v0, Lbrave/internal/Platform$Jre9$1;

    invoke-direct {v0, p0}, Lbrave/internal/Platform$Jre9$1;-><init>(Lbrave/internal/Platform$Jre9;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 156
    const-string v0, "Jre9{}"

    return-object v0
.end method
