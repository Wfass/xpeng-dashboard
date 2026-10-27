.class public Lcom/google/i18n/phonenumbers/i$a;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private domesticCarrierCodeFormattingRule_:Ljava/lang/String;

.field private format_:Ljava/lang/String;

.field private hasDomesticCarrierCodeFormattingRule:Z

.field private hasFormat:Z

.field private hasNationalPrefixFormattingRule:Z

.field private hasNationalPrefixOptionalWhenFormatting:Z

.field private hasPattern:Z

.field private leadingDigitsPattern_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nationalPrefixFormattingRule_:Ljava/lang/String;

.field private nationalPrefixOptionalWhenFormatting_:Z

.field private pattern_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 80
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->pattern_:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->format_:Ljava/lang/String;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/i$a;->leadingDigitsPattern_:Ljava/util/List;

    .line 121
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->nationalPrefixFormattingRule_:Ljava/lang/String;

    const/4 v1, 0x0

    .line 137
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/i$a;->nationalPrefixOptionalWhenFormatting_:Z

    .line 150
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a;
    .locals 1

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->hasPattern:Z

    .line 85
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$a;->pattern_:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/google/i18n/phonenumbers/i$a;
    .locals 1

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->hasNationalPrefixOptionalWhenFormatting:Z

    .line 144
    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/i$a;->nationalPrefixOptionalWhenFormatting_:Z

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->pattern_:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a;
    .locals 1

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->hasFormat:Z

    .line 96
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$a;->format_:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->format_:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$a;->d()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a;
    .locals 1

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->hasNationalPrefixFormattingRule:Z

    .line 126
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$a;->nationalPrefixFormattingRule_:Ljava/lang/String;

    return-object p0
.end method

.method public d()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a;
    .locals 1

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->hasDomesticCarrierCodeFormattingRule:Z

    .line 157
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$a;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->nationalPrefixFormattingRule_:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->nationalPrefixOptionalWhenFormatting_:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4

    .line 182
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a;

    .line 183
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$a;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a;

    .line 184
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 186
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/i$a;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$a;->c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a;

    .line 191
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$a;->d(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a;

    .line 194
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/i$a;->a(Z)Lcom/google/i18n/phonenumbers/i$a;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->pattern_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->format_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$a;->c()I

    move-result v0

    .line 165
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 167
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/i$a;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->hasNationalPrefixFormattingRule:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 171
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->hasNationalPrefixFormattingRule:Z

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->nationalPrefixFormattingRule_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 174
    :cond_1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->hasDomesticCarrierCodeFormattingRule:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 175
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->hasDomesticCarrierCodeFormattingRule:Z

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 178
    :cond_2
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->nationalPrefixOptionalWhenFormatting_:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    return-void
.end method
