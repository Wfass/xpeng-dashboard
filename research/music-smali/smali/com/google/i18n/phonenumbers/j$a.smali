.class public Lcom/google/i18n/phonenumbers/j$a;
.super Ljava/lang/Object;
.source "Phonenumber.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/j$a$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private countryCodeSource_:Lcom/google/i18n/phonenumbers/j$a$a;

.field private countryCode_:I

.field private extension_:Ljava/lang/String;

.field private hasCountryCode:Z

.field private hasCountryCodeSource:Z

.field private hasExtension:Z

.field private hasItalianLeadingZero:Z

.field private hasNationalNumber:Z

.field private hasNumberOfLeadingZeros:Z

.field private hasPreferredDomesticCarrierCode:Z

.field private hasRawInput:Z

.field private italianLeadingZero_:Z

.field private nationalNumber_:J

.field private numberOfLeadingZeros_:I

.field private preferredDomesticCarrierCode_:Ljava/lang/String;

.field private rawInput_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/google/i18n/phonenumbers/j$a;->countryCode_:I

    const-wide/16 v1, 0x0

    .line 61
    iput-wide v1, p0, Lcom/google/i18n/phonenumbers/j$a;->nationalNumber_:J

    const-string v1, ""

    .line 77
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/j$a;->extension_:Ljava/lang/String;

    .line 96
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$a;->italianLeadingZero_:Z

    const/4 v0, 0x1

    .line 112
    iput v0, p0, Lcom/google/i18n/phonenumbers/j$a;->numberOfLeadingZeros_:I

    .line 128
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/j$a;->rawInput_:Ljava/lang/String;

    .line 166
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/j$a;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/google/i18n/phonenumbers/j$a$a;->UNSPECIFIED:Lcom/google/i18n/phonenumbers/j$a$a;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j$a;->countryCodeSource_:Lcom/google/i18n/phonenumbers/j$a$a;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/google/i18n/phonenumbers/j$a;->countryCode_:I

    return v0
.end method

.method public a(I)Lcom/google/i18n/phonenumbers/j$a;
    .locals 1

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$a;->hasCountryCode:Z

    .line 50
    iput p1, p0, Lcom/google/i18n/phonenumbers/j$a;->countryCode_:I

    return-object p0
.end method

.method public a(J)Lcom/google/i18n/phonenumbers/j$a;
    .locals 1

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$a;->hasNationalNumber:Z

    .line 66
    iput-wide p1, p0, Lcom/google/i18n/phonenumbers/j$a;->nationalNumber_:J

    return-object p0
.end method

.method public a(Lcom/google/i18n/phonenumbers/j$a$a;)Lcom/google/i18n/phonenumbers/j$a;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$a;->hasCountryCodeSource:Z

    .line 155
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j$a;->countryCodeSource_:Lcom/google/i18n/phonenumbers/j$a$a;

    return-object p0

    .line 152
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$a;->hasExtension:Z

    .line 85
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j$a;->extension_:Ljava/lang/String;

    return-object p0

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public a(Z)Lcom/google/i18n/phonenumbers/j$a;
    .locals 1

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$a;->hasItalianLeadingZero:Z

    .line 101
    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/j$a;->italianLeadingZero_:Z

    return-object p0
.end method

.method public a(Lcom/google/i18n/phonenumbers/j$a;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 230
    :cond_1
    iget v2, p0, Lcom/google/i18n/phonenumbers/j$a;->countryCode_:I

    iget v3, p1, Lcom/google/i18n/phonenumbers/j$a;->countryCode_:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/i18n/phonenumbers/j$a;->nationalNumber_:J

    iget-wide v4, p1, Lcom/google/i18n/phonenumbers/j$a;->nationalNumber_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/j$a;->extension_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/j$a;->extension_:Ljava/lang/String;

    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/i18n/phonenumbers/j$a;->italianLeadingZero_:Z

    iget-boolean v3, p1, Lcom/google/i18n/phonenumbers/j$a;->italianLeadingZero_:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/i18n/phonenumbers/j$a;->numberOfLeadingZeros_:I

    iget v3, p1, Lcom/google/i18n/phonenumbers/j$a;->numberOfLeadingZeros_:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/j$a;->rawInput_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/j$a;->rawInput_:Ljava/lang/String;

    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/j$a;->countryCodeSource_:Lcom/google/i18n/phonenumbers/j$a$a;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/j$a;->countryCodeSource_:Lcom/google/i18n/phonenumbers/j$a$a;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/j$a;->preferredDomesticCarrierCode_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/j$a;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 234
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->o()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->o()Z

    move-result p1

    if-ne v2, p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public b()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/google/i18n/phonenumbers/j$a;->nationalNumber_:J

    return-wide v0
.end method

.method public b(I)Lcom/google/i18n/phonenumbers/j$a;
    .locals 1

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$a;->hasNumberOfLeadingZeros:Z

    .line 117
    iput p1, p0, Lcom/google/i18n/phonenumbers/j$a;->numberOfLeadingZeros_:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$a;->hasRawInput:Z

    .line 136
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j$a;->rawInput_:Ljava/lang/String;

    return-object p0

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$a;->hasPreferredDomesticCarrierCode:Z

    .line 174
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/j$a;->preferredDomesticCarrierCode_:Ljava/lang/String;

    return-object p0

    .line 171
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public c()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$a;->hasExtension:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j$a;->extension_:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$a;->hasItalianLeadingZero:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 240
    instance-of v0, p1, Lcom/google/i18n/phonenumbers/j$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/i18n/phonenumbers/j$a;

    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/j$a;->a(Lcom/google/i18n/phonenumbers/j$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$a;->italianLeadingZero_:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$a;->hasNumberOfLeadingZeros:Z

    return v0
.end method

.method public h()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/google/i18n/phonenumbers/j$a;->numberOfLeadingZeros_:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 250
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->a()I

    move-result v0

    const/16 v1, 0x87d

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x35

    .line 251
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x35

    .line 252
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x35

    .line 253
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->f()Z

    move-result v0

    const/16 v2, 0x4cf

    const/16 v3, 0x4d5

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x35

    .line 254
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->h()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x35

    .line 255
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x35

    .line 256
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->m()Lcom/google/i18n/phonenumbers/j$a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/j$a$a;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x35

    .line 257
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x35

    .line 258
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v1, v2

    return v1
.end method

.method public i()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$a;->hasRawInput:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j$a;->rawInput_:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/google/i18n/phonenumbers/j$a;
    .locals 1

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$a;->hasRawInput:Z

    const-string v0, ""

    .line 141
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j$a;->rawInput_:Ljava/lang/String;

    return-object p0
.end method

.method public l()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$a;->hasCountryCodeSource:Z

    return v0
.end method

.method public m()Lcom/google/i18n/phonenumbers/j$a$a;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j$a;->countryCodeSource_:Lcom/google/i18n/phonenumbers/j$a$a;

    return-object v0
.end method

.method public n()Lcom/google/i18n/phonenumbers/j$a;
    .locals 1

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$a;->hasCountryCodeSource:Z

    .line 160
    sget-object v0, Lcom/google/i18n/phonenumbers/j$a$a;->UNSPECIFIED:Lcom/google/i18n/phonenumbers/j$a$a;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j$a;->countryCodeSource_:Lcom/google/i18n/phonenumbers/j$a$a;

    return-object p0
.end method

.method public o()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$a;->hasPreferredDomesticCarrierCode:Z

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/j$a;->preferredDomesticCarrierCode_:Ljava/lang/String;

    return-object v0
.end method

.method public q()Lcom/google/i18n/phonenumbers/j$a;
    .locals 1

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$a;->hasPreferredDomesticCarrierCode:Z

    const-string v0, ""

    .line 179
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/j$a;->preferredDomesticCarrierCode_:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Country Code: "

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/i18n/phonenumbers/j$a;->countryCode_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " National Number: "

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/i18n/phonenumbers/j$a;->nationalNumber_:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " Leading Zero(s): true"

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " Number of leading zeros: "

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/i18n/phonenumbers/j$a;->numberOfLeadingZeros_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " Extension: "

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/j$a;->extension_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_2
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " Country Code Source: "

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/j$a;->countryCodeSource_:Lcom/google/i18n/phonenumbers/j$a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    :cond_3
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->o()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " Preferred Domestic Carrier Code: "

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/j$a;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
