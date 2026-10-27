.class Lcom/alibaba/sdk/android/httpdns/probe/c;
.super Ljava/lang/Object;


# instance fields
.field private a:[Ljava/lang/String;

.field private hostName:Ljava/lang/String;

.field private j:J

.field private k:J

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/probe/c;->hostName:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/probe/c;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/probe/c;->o:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/sdk/android/httpdns/probe/c;->p:Ljava/lang/String;

    iput-wide p5, p0, Lcom/alibaba/sdk/android/httpdns/probe/c;->j:J

    iput-wide p7, p0, Lcom/alibaba/sdk/android/httpdns/probe/c;->k:J

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/c;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/c;->j:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/c;->k:J

    return-wide v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/c;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/c;->p:Ljava/lang/String;

    return-object v0
.end method
