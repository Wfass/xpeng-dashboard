.class Lbrave/internal/Platform$Jre9$1;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lbrave/Clock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbrave/internal/Platform$Jre9;->clock()Lbrave/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbrave/internal/Platform$Jre9;


# direct methods
.method constructor <init>(Lbrave/internal/Platform$Jre9;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lbrave/internal/Platform$Jre9$1;->this$0:Lbrave/internal/Platform$Jre9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMicroseconds()J
    .locals 5

    .line 145
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/time/Instant;->getNano()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Clock.systemUTC().instant()"

    return-object v0
.end method
